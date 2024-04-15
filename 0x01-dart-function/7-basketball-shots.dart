int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int pointsA = 0;
  int pointsB = 0;

  teamA.forEach((key, value) {
    if (key == 'Free throws') pointsA += value;
    else if (key == '2 pointers') pointsA += value * 2;
    else if (key == '3 pointers') pointsA += value * 3;
  });

  teamB.forEach((key, value) {
    if (key == 'Free throws') pointsB += value;
    else if (key == '2 pointers') pointsB += value * 2;
    else if (key == '3 pointers') pointsB += value * 3;
  });

  if (pointsA > pointsB) return 1;
  else if (pointsA < pointsB) return 2;
  else return 0;
}