<?php
header('Content-Type: application/json');

$movies = [
    1 => ['videoUrl' => 'https://www.youtube.com/watch?v=kxv7xyQ5bbI'],
    2 => ['videoUrl' => 'https://youtu.be/dAnQ23o2w-c?si=WXCTJq8FUmVQuMi4'],
    3 => ['videoUrl' => 'https://youtu.be/pBk4NYhWNMM?si=6rId-jk1HxkIf9cI'],
    4 => ['videoUrl' => 'https://youtu.be/PJybk11EIm8?si=CE2Dkef-jAbnuTCu'],
    5 => ['videoUrl' => 'https://youtu.be/YoopUGMwDeQ?si=lLyyGpToEJg5MJY0'],
    6 => ['videoUrl' => 'https://youtu.be/YoopUGMwDeQ?si=0MXjzpoCFY08L4yR'],
    7 => ['videoUrl' => 'https://youtu.be/e1SxNP7PWAc?si=3DIAOGfPHNoILvsT'],
    8 => ['videoUrl' => 'https://youtu.be/dwM9f6OfRhc?si=M2cepwX-KZK_KMzp'],
    9 => ['videoUrl' => 'https://youtu.be/cqGjhVJWtEg?si=mH4znW1nE3ZkNkon'],
    10 => ['videoUrl' => 'https://youtu.be/8AcNEVUzV4o?si=XGF-kvCNBdRQ_qsq'],
    11 => ['videoUrl' => 'https://youtu.be/uaDsCHcu69s?si=f5NkDdJdMe_Rf89b'],
    12 => ['videoUrl' => 'https://youtu.be/mqqft2x_Aa4?si=U3NzD-EymipL2ElI'],

];

$movieId = $_GET['id'] ?? null;

if ($movieId) {
    if (isset($movies[$movieId])) {
        echo json_encode($movies[$movieId]);
    } else {
        echo json_encode(['error' => 'Movie not found']);
    }
} else {
    echo json_encode(['error' => 'Movie ID not provided']);
}
exit;
?>
