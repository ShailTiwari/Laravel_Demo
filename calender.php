<?php
  $year = '2022';
  $months =  array( 'Jan', 'Feb', 'Mar', 'Apr', 'May', 'June', 'July', 'Aug', 'Sept', 'Oct', 'Nov', 'Dec' );
  $days = array( 31, 
                 (strtotime("1 Mar ".$year) - strtotime("1 Feb ".$year)) / ( 24 * 60 * 60 ),
                 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 );
  $wday = array( '', '', '', '', '', '', '' );
  $cal = array();
  foreach(range(0, 11) as $i) 
  {
    $firstday = getdate(strtotime('1 '.$months[$i].' '.$year));
    $fromday = $firstday['wday'];
    $leftday =  7 - ( $fromday + $days[$i] ) % 7;
    $cal[] = array_merge( array_slice($wday, 0, $fromday),
                          range(1, $days[$i]),
                          array_slice($wday, 0, $leftday)
                        );
  }
?>
<?php foreach(range(0, 11) as $i) : ?>
<?php $totaldays = 0;
$totaldays = cal_days_in_month(CAL_GREGORIAN, $i+1, $year); 


 ?>
<table>
  <thead>
    <tr><th colspan="8"><?php echo $months[$i].' '.$year; ?></th></tr>
    <tr><th>From-To</th><th>Sun</th><th>Mon</th><th>Tue</th><th>Wed</th><th>Thu</th><th>Fri</th><th>Sat</th>
  </thead>
  <tbody>
    <?php  
      $start_date='1';
     echo "<td>{$start_date}-{$cal[$i][6]}</td>";
    foreach($cal[$i] as $k => $v) 
    { 
      $last_date=$totaldays;
      if($k && !($k % 7)) 
      {
        if ($totaldays<6+$k) 
           {
            $last_date=$totaldays;
           } 
           else
           {
            $last_date=$cal[$i][6+$k];
           }

        echo "</tr><tr><td>{$v}-{$last_date}</td>";
      }
      echo "<td>{$v}   </td>";



    }
    ?>
    </tr>
  </tbody>
</table>
<?php endforeach ?>