try{
    $serviceName = "ImportService"
    $portToTest = 5000

    $service1 = Get-NetTCPConnection -LocalPort 5000
    $state = $service1.State

    switch -Exact ($state)
    {
        'Listen' { $metricValue=1;Break }
        'Bound' { $metricValue=2;Break }
        'Established' { $metricValue=3;Break }
        'FinWait1' { $metricValue=4;Break }
        'LastAck' { $metricValue=5;Break }   
        'SynReceived' { $metricValue=6;Break }
        'SynSent' { $metricValue=7;Break }
        'TimeWait' { $metricValue=8;Break }
        'Closing' { $metricValue=9;Break }
        'CloseWait' { $metricValue=10;Break }
        'Closed' { $metricValue=11;Break }
        'DeleteTCP' { $metricValue=12;Break }    
        Default { $metricValue=13;Break }
    }
}
catch {
    $metricValue=14
}

Write-Host "name=Custom Metrics|RadiologyServices|$serviceName|State,value=$metricValue,aggregator=OBSERVATION"


try{
    $serviceName = "QueryService"
    $portToTest = 4000
    
    $service2 = Get-NetTCPConnection -LocalPort $portToTest
    $state = $service2.State

    switch -Exact ($state)
    {
        'Listen' { $metricValue=1;Break }
        'Bound' { $metricValue=2;Break }
        'Established' { $metricValue=3;Break }
        'FinWait1' { $metricValue=4;Break }
        'LastAck' { $metricValue=5;Break }   
        'SynReceived' { $metricValue=6;Break }
        'SynSent' { $metricValue=7;Break }
        'TimeWait' { $metricValue=8;Break }
        'Closing' { $metricValue=9;Break }
        'CloseWait' { $metricValue=10;Break }
        'Closed' { $metricValue=11;Break }
        'DeleteTCP' { $metricValue=12;Break }    
        Default { $metricValue=13;Break }
    }
}
catch {
    $metricValue=14
}

Write-Host "name=Custom Metrics|RadiologyServices|$serviceName|State,value=$metricValue,aggregator=OBSERVATION"