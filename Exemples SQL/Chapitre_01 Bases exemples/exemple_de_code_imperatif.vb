  DIM noms[7] AS String
  DIM position1 AS Integer, position2 AS Integer
  DIM str1 AS String, str2 AS String
            
  noms[0] = "Jean"
  noms[1] = "Paul"
  noms[2] = "Pierre"
  noms[3] = "Luc"
  noms[4] = "Jacques"
  noms[5] = "Antoine"
  noms[6] = "Francis"

  FOR position1 = 0 TO 6
    FOR position2 = position1 TO 6
      IF UCase(noms[position2]) < UCase(noms[position1]) THEN
        str1 = noms[position1]
        str2 = noms[position2]
        noms[position1] = str2
        noms[position2] = str1
      END IF
    NEXT
  NEXT

  FOR position1 = 0 TO 6
  
    IF NOT IsNull(noms[position1]) THEN 
      PRINT noms[position1]
    END IF

  NEXT
