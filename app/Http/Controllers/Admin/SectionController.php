<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Section;
use App\Cadetcrse;
use App\Models\Cadets;
use Illuminate\Support\Facades\DB;

class SectionController extends Controller
{
    public function index()
    {
        $section = Section::all();
        $cadet = DB::select("SELECT sections.id, sections.afpsn, cadets.lname, cadets.fname, cadets.mname, sections.servid,
                            sections.yrgr, sections.coy, acadyr, term, sec FROM sections INNER JOIN cadets
                            ON cadets.afpsn = sections.afpsn ORDER BY sections.coy");
        //$alter = DB::query("ALTER TABLE sections AUTO_INCREMENT = 1");

        return view('section.section')->with('cadet', $cadet)->with('section', $section);
        //->with('alter'. $alter);
    }

    public function sort(Request $request)
    {

        $section = Section::all();
        $number = $request->input('number');
        $year = $request->input('year');
        $cadet = DB::select("SELECT cadets.afpsn, cadets.yrgr FROM cadets WHERE yrgr = '$year'");

        /*for($i = 0; $i<=$year; $i++) {
            $data = [

            ];
        }*/

        //$chunk = array_chunk($cadet, $number);
        //$section->update();
        return redirect('/section');
        //->with('chunk', $chunk)
    }

    public function add(Request $request)
    {
        $sections = Section::all();

        return view('section.edit')->with('sections', $sections);
    }
    public function addCadets(Request $request)
    {
        $term = $request->input('term');
        $year = $request->input('year');
        $sections = DB::insert("INSERT INTO sections (id, afpsn, servid, yrgr, coy, term, acadyr)
        SELECT id, afpsn, servid, yrgr, coy, '$term' AS term, '$year' AS acadyr FROM cadets WHERE yrgr = '$year'");
        //$sections = DB::update("UPDATE sections AS s SET sec = '$sec' from cadetcrses WHERE s.id = cadetcrses.sections_id AND cadetcrses.acadyr = '$year'");
        //$sections = DB::insert("INSERT INTO sections (id, sec) VALUES
        /*$cadets = DB::select("SELECT cadetcrses.acadyr, cadets.afpsn, cadets.yrgr, sections.sec FROM cadetcrses
        FULL OUTER JOIN cadets ON cadets.id = cadetcrses.cadets_id
        FULL OUTER JOIN sections ON sections.id = cadetcrses.cadets_id WHERE cadets.yrgr = '$year'");*/
        //*******GET AFPSN, CCODE, TERM, ACADYR */
        //INNER JOIN cadetcrses ON cadets.id = cadetcrses.cadets_id
        /*$cadets = DB::table('cadets')
                    ->join('cadetcrses', 'cadets.id', '=', 'cadetcrses.cadets_id')
                    ->select('cadets.afpsn', 'cadets.yrgr', 'cadetcrses.acadyr')
                    ->where('cadets.yrgr', '=', $year)
                    ->get();
        */
        //$count = count($cadets);
        return redirect('/section')->with('sections', $sections);
        //->with('count', $count);
    }

    public function save(Request $request)
    {
        $sec = $request->input('sec');
        $coy = $request->input('coy');
        $term = $request->input('term');
        $acadyr = $request->input('acadyr');

        $sections = DB::update("UPDATE sections SET sec = '$sec' WHERE coy = '$coy' AND term = '$term' AND acadyr = '$acadyr'");

        return redirect('/section')->with('sections', $sections);
    }

    public function update(Request $request)
    {
        $sections = Section::all();

        return view('section.update')->with('sections', $sections);
    }

    public function set(Request $request)
    {
        $sections = Section::all();

        return view('section.setCoy')->with('sections', $sections);
    }

   public function group(Request $request){
        $divisor = $request->input('divisor'); //3
        $counter = DB::table('sections')->count(); //50
        //$groupA = DB::select("SELECT (COUNT(afpsn) / 2) FROM sections"); //3
        /*$groupB = DB::select("SELECT (COUNT(afpsn) / $divisor) * 2 FROM sections"); //33
        $groupC = DB::select("SELECT (COUNT(afpsn) / $divisor) * 3 FROM sections"); //50
        $groupD = DB::select("SELECT (COUNT(afpsn) / $divisor) * 4 FROM sections"); //66
        $groupE = DB::select("SELECT (COUNT(afpsn) / $divisor) * 5 FROM sections"); //83
        */
        $roundOff = $counter / $divisor;
        $groupA = round($roundOff, 0); //17
        $groupB = $groupA * 2; //34
        $groupC = $groupA * 3; //51
        $groupD = $groupA * 4; //68
        $groupE = $groupA * 5; //85

        $sections = DB::update("UPDATE sections SET sec =
        ( CASE
        WHEN servid = 'R' OR (id >= 1 AND id < $groupB) THEN 'A'
        WHEN id > '$groupA' AND id < '$groupC' THEN 'B'
        WHEN id > '$groupB' AND id < '$groupD' THEN 'C'
        WHEN id > '$groupC' AND id < '$groupE' THEN 'D'
        ELSE 'A'
        END )
        ");

        /*if($counter > 0 && $counter <= $groupB){ //50 > 0
            $sections = DB::update("UPDATE sections SET sec = 'A' WHERE id IN (SELECT id FROM sections ORDER BY id ASC LIMIT 0, 7"); //16
        }elseif(($counter > $groupA) && ($counter <= $groupC)){ //50 > 3 AND 50 <= 50
            $sections = DB::update("UPDATE sections SET sec = 'B' WHERE id IN (SELECT id FROM sections ORDER BY id ASC LIMIT 0, 7"); //17 AND 50
        }elseif(($counter > $groupB) && ($counter <= $groupD)){ // 50 > 33 AND 50 < 66
            $sections = DB::update("UPDATE sections SET sec = 'C' WHERE id IN (SELECT id FROM sections ORDER BY id ASC LIMIT 0, 7"); //34 AND 65
        }elseif(($counter > $groupC) && ($counter < $groupD)){ //50 > 50 AND 50 < 83
            $sections = DB::update("UPDATE sections SET sec = 'D' WHERE id IN (SELECT id FROM sections ORDER BY id ASC LIMIT 0, 7"); //51 AND 82
        }
        */
        return redirect('/section')->with('sections', $sections);
   }

   public function order()
    {
        return view('section.sort.sort');
    }

    public function edit($id)
    {
        $sections = Section::findOrFail($id);

        return view('section.CadetEdit.edit')->with('sections', $sections);
    }

    public function updates(Request $request, $id)
    {
        $sections = Section::find($id);
        $sections->sec = $request->input('sec');
        $sections->secrank = $request->input('secrank');
        $sections->afpsn = $request->input('afpsn');
        $sections->servid = $request->input('servid');
        $sections->yrgr = $request->input('yrgr');
        $sections->coy = $request->input('coy');
        $sections->term = $request->input('term');
        $sections->acadyr = $request->input('acadyr');

        $sections->update();
        return redirect('/sort-section')->with('status', 'DATA has been updated!');
    }

    public function sortServ(Request $request)
    {
        $sections = Section::all();

        return view('section.sort.setServ')->with('sections', $sections);
    }

    public function sortSet(Request $request)
    {
        $divisorArmy = $request->input('armyDivisor'); //2
        $divisorNavy = $request->input('navyDivisor'); //2
        $divisorAF = $request->input('afDivisor'); //2

        $counter = DB::table('sections')->count(); //100
        $armyTotal = Section::where('servid', 'R')->count(); //50
        $navyTotal = Section::where('servid', 'V')->count(); //30
        $navyAdded = $armyTotal + $navyTotal; //80
        $airforceTotal = Section::where('servid', 'F')->count(); //20
        $totalCadets = $navyAdded + $airforceTotal; //100

        $allSections = $divisorArmy + $divisorNavy + $divisorAF;
        $armyCounter = $armyTotal / $divisorArmy; //25
        $navyCounter = $navyTotal / $divisorNavy; //15
        $afCounter = $airforceTotal / $divisorAF; //10

        //10
    // 10 //10

        //$divisor =

       /* $sections = DB::update("UPDATE sections SET sec =
        ( CASE
        WHEN id >= 1 AND id < $groupB THEN 'A'
        WHEN id > '$groupA' AND id < '$groupC' THEN 'B'
        WHEN id > '$groupB' AND id < '$groupD' THEN 'C'
        WHEN id > '$groupC' AND id < '$groupE' THEN 'D'
        ELSE 'A'
        END )
        ");

        /*NOTE TO SELF USE IF STATEMENTS TO HANDLE REMAINDERS*/

        $armyA = round($armyCounter, 0); //1
        $armyB = $armyA + $armyA; //20 // 2
        $armyC = $armyB + $armyA; //30
        $armyD = $armyC + $armyA; //40
        $armyE = $armyD + $armyA; //50
        $armyF = $armyE + $armyA; //60
        $armyG = $armyF + $armyA; //70
        $armyH = $armyG + $armyA; //80
        $armyI = $armyH + $armyA; //90
        $armyJ = $armyI + $armyA; //100
        $armyK = $armyJ + $armyA; //110

        $navyA = round($navyCounter, 0); //1
        $navyB = $navyA + $navyA; //20
        $navyC = $navyB + $navyA; //30
        $navyD = $navyC + $navyA; //40
        $navyE = $navyD + $navyA; //50
        $navyF = $navyE + $navyA; //60
        $navyG = $navyF + $navyA; //70
        $navyH = $navyG + $navyA; //80
        $navyI = $navyH + $navyA; //90
        $navyJ = $navyI + $navyA; //100
        $navyK = $navyJ + $navyA; //100

        $afA = round($afCounter, 0); //1
        $afB = $afA + $afA; //20
        $afC = $afB + $afA; //30
        $afD = $afC + $afA; //40
        $afE = $afD + $afA; //50
        $afF = $afE + $afA; //60
        $afG = $afF + $afA; //70
        $afH = $afG + $afA; //80
        $afI = $afH + $afA; //90
        $afJ = $afI + $afA; //100

    $armyX = 1;
    $armyY = 1;
    $armyZ = 1;

    $navyY = $armyTotal + 1;
    $navyZ = $armyTotal + $navyCounter;

    $afY = $navyAdded + 1;
    $afZ = $navyAdded + $afCounter;


    $letters = array('Aa', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K');
    for ($armyX=0;$armyX<$allSections; $armyX++){
        while ($armyY <= $divisorArmy){ //Creates how many sections
            while ($armyZ <= $armyCounter){ //How many cadets per Section
                $sections = DB::update("UPDATE sections SET sec = '$letters[$armyX]' WHERE id IN (SELECT id FROM sections WHERE servid ='R' ORDER BY id BETWEEN $armyY AND $armyZ)");
                $armyZ++;
                $armyY++;
            }
            $armyX++;
        }
    }

       /* $sections = DB::update("UPDATE sections SET sec =
        ( CASE
        WHEN ( id >= 1 AND id < $armyA ) AND servid = 'R' THEN 'A'
        WHEN ( id > $armyA AND id < $armyB ) AND servid = 'R' THEN 'B'
        WHEN ( id > $armyB AND id < $armyC ) AND servid = 'R' THEN 'C'
        WHEN ( id > $armyC AND id < $armyD ) AND servid = 'R' THEN 'D'
        WHEN ( id > $armyD AND id < $armyE ) AND servid = 'R' THEN 'E'
        WHEN ( id > $armyE AND id < $armyF ) AND servid = 'R' THEN 'F'
        WHEN ( id > $armyF AND id < $armyG ) AND servid = 'R' THEN 'G'
        WHEN ( id > $armyG AND id < $armyH ) AND servid = 'R' THEN 'H'
        WHEN ( id > $armyH AND id < $armyI ) AND servid = 'R' THEN 'I'

        WHEN ( id > $armyTotal AND id < $afA ) AND servid = 'F' THEN 'A'
        WHEN ( id > $armyTotal AND id < $afB ) AND servid = 'F' THEN 'B'
        WHEN ( id > $armyTotal AND id < $afC ) AND servid = 'F' THEN 'C'
        WHEN ( id > $armyTotal AND id < $afD ) AND servid = 'F' THEN 'D'
        WHEN ( id > $armyTotal AND id < $afE ) AND servid = 'F' THEN 'E'
        WHEN ( id > $armyTotal AND id < $afF ) AND servid = 'F' THEN 'F'
        WHEN ( id > $armyTotal AND id < $afG ) AND servid = 'F' THEN 'G'
        WHEN ( id > $armyTotal AND id < $afH ) AND servid = 'F' THEN 'H'
        WHEN ( id > $armyTotal AND id < $afI ) AND servid = 'F' THEN 'I'

        WHEN ( id >= $navyAdded AND id < $afA ) AND servid = 'V' THEN 'A'
        WHEN ( id >= $navyAdded AND id < $afB ) AND servid = 'V' THEN 'B'
        WHEN ( id >= $navyAdded AND id < $afC ) AND servid = 'V' THEN 'C'
        WHEN ( id >= $navyAdded AND id < $afD ) AND servid = 'V' THEN 'D'
        WHEN ( id >= $navyAdded AND id < $afE ) AND servid = 'V' THEN 'E'
        WHEN ( id >= $navyAdded AND id < $afF ) AND servid = 'V' THEN 'F'
        WHEN ( id >= $navyAdded AND id < $afG ) AND servid = 'V' THEN 'G'
        WHEN ( id >= $navyAdded AND id < $afH ) AND servid = 'V' THEN 'H'
        WHEN ( id >= $navyAdded AND id < $afI ) AND servid = 'V' THEN 'I'
        END )
        ");
        */
        /*sections = DB::update("UPDATE sections
        SET sec =
            ( CASE
            WHEN id > 1 AND id < $armyA AND servid = 'R' THEN 'A' # id >= 1 AND id <=
            WHEN id > $armyA AND id < $armyB AND servid = 'R' THEN 'B'
            WHEN id > $armyB AND id < $armyC AND servid = 'R' THEN 'C'
            WHEN id > $armyC AND id < $armyD AND servid = 'R' THEN 'D'
            WHEN id > $armyD AND id < $armyE AND servid = 'R' THEN 'E'
            WHEN id > $armyE AND id < $armyF AND servid = 'R' THEN 'F'
            WHEN id > $armyF AND id < $armyG AND servid = 'R' THEN 'G'
            WHEN id > $armyG AND id < $armyH AND servid = 'R' THEN 'H'
            WHEN id > $armyH AND id < $armyI AND servid = 'R' THEN 'I'
            END
        ");

          /*  WHEN id > $armyTotal AND id < $navyA AND servid = 'V' THEN 'A' # 3 > 2 AND 3 < 1
            WHEN id > $armyTotal AND id < $navyB AND servid = 'V' THEN 'B' # 3 > 2 AND 3 < 2
            WHEN id > $armyTotal AND id < $navyC AND servid = 'V' THEN 'C' # 3 > 2 AND 3 < 3
            WHEN id > $armyTotal AND id < $navyD AND servid = 'V' THEN 'D' # 3 > 2 AND 3 < 4
            WHEN id > $armyTotal AND id < $navyE AND servid = 'V' THEN 'E'
            WHEN id > $armyTotal AND id < $navyF AND servid = 'V' THEN 'F'
            WHEN id > $armyTotal AND id < $navyG AND servid = 'V' THEN 'G'
            WHEN id > $armyTotal AND id < $navyH AND servid = 'V' THEN 'H'
            WHEN id > $armyTotal AND id < $navyI AND servid = 'V' THEN 'I'

            WHEN id > $navyAdded AND id < $afA AND servid = 'F' THEN 'A'
            WHEN id > $navyAdded AND id < $afB AND servid = 'F' THEN 'B'
            WHEN id > $navyAdded AND id < $afC AND servid = 'F' THEN 'C'
            WHEN id > $navyAdded AND id < $afD AND servid = 'F' THEN 'D'
            WHEN id > $navyAdded AND id < $afE AND servid = 'F' THEN 'E'
            WHEN id > $navyAdded AND id < $afF AND servid = 'F' THEN 'F'
            WHEN id > $navyAdded AND id < $afG AND servid = 'F' THEN 'G'
            WHEN id > $navyAdded AND id < $afH AND servid = 'F' THEN 'H'
            WHEN id > $navyAdded AND id < $afI AND servid = 'F' THEN 'I'*/

       /* WHEN servid = 'V' THEN
            CASE
            WHEN id >= 1 AND id < $navyA THEN 'A'
            WHEN id >= $navyA AND id < $navyB THEN 'B'
            WHEN id >= $navyB AND id < $navyC THEN 'C'
            WHEN id >= $navyC AND id < $navyD THEN 'D'
            WHEN id >= $navyD AND id < $navyE THEN 'E'
            WHEN id >= $navyE AND id < $navyF THEN 'F'
            WHEN id >= $navyF AND id < $navyG THEN 'G'
            WHEN id >= $navyG AND id < $navyH THEN 'H'
            WHEN id >= $navyH AND id < $navyI THEN 'I'
        END
        WHEN servid = 'F' THEN
            CASE
            WHEN id >= 1 AND id < $afA THEN 'A'
            WHEN id >= $afA AND id < $afB THEN 'B'
            WHEN id >= $afB AND id < $afC THEN 'C'
            WHEN id >= $afC AND id < $afD THEN 'D'
            WHEN id >= $afD AND id < $afE THEN 'E'
            WHEN id >= $afE AND id < $afF THEN 'F'
            WHEN id >= $afF AND id < $afG THEN 'G'
            WHEN id >= $afG AND id < $afH THEN 'H'
            WHEN id >= $afH AND id < $afI THEN 'I'
        END )
        ");

       /* $sections = DB::update("UPDATE sections SET sec = 'A' WHERE id IN (SELECT id FROM sections WHERE servid ='R' ORDER BY id LIMIT $armyA)"); //10
        $sections = DB::update("UPDATE sections SET sec = 'B' WHERE id IN (SELECT id FROM sections WHERE servid ='R' ORDER BY id OFFSET $armyA LIMIT $armyA)"); //20
        $sections = DB::update("UPDATE sections SET sec = 'C' WHERE id IN (SELECT id FROM sections WHERE servid ='R' ORDER BY id OFFSET $armyB LIMIT $armyA)"); //30
        $sections = DB::update("UPDATE sections SET sec = 'D' WHERE id IN (SELECT id FROM sections WHERE servid ='R' ORDER BY id OFFSET $armyC LIMIT $armyA)"); //40
        $sections = DB::update("UPDATE sections SET sec = 'E' WHERE id IN (SELECT id FROM sections WHERE servid ='R' ORDER BY id OFFSET $armyC LIMIT $armyA)"); //50

        $sections = DB::update("UPDATE sections SET sec = 'A' WHERE id IN (SELECT id FROM sections WHERE servid ='V' ORDER BY id OFFSET $armyC LIMIT $armyA)"); //10
        $sections = DB::update("UPDATE sections SET sec = 'B' WHERE id IN (SELECT id FROM sections WHERE servid ='V' ORDER BY id OFFSET $armyC LIMIT $armyA)"); //20
        $sections = DB::update("UPDATE sections SET sec = 'C' WHERE id IN (SELECT id FROM sections WHERE servid ='V' ORDER BY id OFFSET $armyC LIMIT $armyA)"); //30
        $sections = DB::update("UPDATE sections SET sec = 'D' WHERE id IN (SELECT id FROM sections WHERE servid ='V' ORDER BY id OFFSET $armyC LIMIT $armyA)"); //40
        $sections = DB::update("UPDATE sections SET sec = 'E' WHERE id IN (SELECT id FROM sections WHERE servid ='V' ORDER BY id OFFSET $armyC LIMIT $armyA)"); //50

        $sections = DB::update("UPDATE sections SET sec = 'A' WHERE id IN (SELECT id FROM sections WHERE servid ='F' ORDER BY id LIMIT $afA)");
        $sections = DB::update("UPDATE sections SET sec = 'B' WHERE id IN (SELECT id FROM sections WHERE servid ='F' ORDER BY id OFFSET $afA LIMIT $afA)");
        $sections = DB::update("UPDATE sections SET sec = 'C' WHERE id IN (SELECT id FROM sections WHERE servid ='F' ORDER BY id OFFSET $afB LIMIT $afA)");
        $sections = DB::update("UPDATE sections SET sec = 'D' WHERE id IN (SELECT id FROM sections WHERE servid ='F' ORDER BY id OFFSET $afC LIMIT $afA)");
        $sections = DB::update("UPDATE sections SET sec = 'E' WHERE id IN (SELECT id FROM sections WHERE servid ='F' ORDER BY id OFFSET $armyC LIMIT $armyA)");
        */
        return redirect('/section')->with('sections', $sections);
    }
}
