.class public final Lek;
.super Ljava/lang/Object;


# static fields
.field private static final 癤욱븳援:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "aaraaabkabafrafakaakalbsqamhamaraararganarmhyasmasavaavaveaeaymayazeazbakbabambmbaqeubelbebenbnbihbhbisbibodbobosbsbrebrbulbgburmycatcacescschachchecechizhchucuchvcvcorkwcoscocrecrcymcyczecsdandadeudedivdvdutnldzodzellelengenepoeoesteteuseueweeefaofofasfafijfjfinfifrafrfrefrfryfyfulffgeokagerdeglagdglegaglgglglvgvgreelgrngngujguhaththauhahebheherhzhinhihmohohrvhrhunhuhyehyiboigiceisidoioiiiiiikuiuileieinaiaindidipkikislisitaitjavjvjpnjakalklkanknkaskskatkakaukrkazkkkhmkmkikkikinrwkirkykomkvkonkgkorkokuakjkurkulaololatlalavlvlimlilinlnlitltltzlblubluluglgmacmkmahmhmalmlmaomimarmrmaymsmkdmkmlgmgmltmtmonmnmrimimsamsmyamynaunanavnvnblnrndendndongnepnenldnlnnonnnobnbnornonyanyociocojiojoriorormomossospanpaperfaplipipolplporptpuspsquequrohrmronrorumrorunrnrusrusagsgsansasinsislksksloskslvslsmesesmosmsnasnsndsdsomsosotstspaessqisqsrdscsrpsrsswsssunsuswaswswesvtahtytamtatatttteltetgktgtgltlthathtibbotirtitontotsntntsotstuktkturtrtwitwuigugukrukurduruzbuzvenvevievivolvowelcywlnwawolwoxhoxhyidyiyoryozhazazhozhzulzu"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x5

    sput v0, Lek;->癤욱븳援:I

    return-void
.end method

.method private static 癤욱븳援(Ljava/lang/String;I)I
    .locals 5

    const/4 v1, 0x0

    mul-int/lit8 v0, p1, 0x5

    move v2, v1

    move v3, v0

    :goto_0
    const/4 v0, 0x3

    if-lt v2, v0, :cond_1

    move v0, v1

    :cond_0
    return v0

    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    const-string v4, "aaraaabkabafrafakaakalbsqamhamaraararganarmhyasmasavaavaveaeaymayazeazbakbabambmbaqeubelbebenbnbihbhbisbibodbobosbsbrebrbulbgburmycatcacescschachchecechizhchucuchvcvcorkwcoscocrecrcymcyczecsdandadeudedivdvdutnldzodzellelengenepoeoesteteuseueweeefaofofasfafijfjfinfifrafrfrefrfryfyfulffgeokagerdeglagdglegaglgglglvgvgreelgrngngujguhaththauhahebheherhzhinhihmohohrvhrhunhuhyehyiboigiceisidoioiiiiiikuiuileieinaiaindidipkikislisitaitjavjvjpnjakalklkanknkaskskatkakaukrkazkkkhmkmkikkikinrwkirkykomkvkonkgkorkokuakjkurkulaololatlalavlvlimlilinlnlitltltzlblubluluglgmacmkmahmhmalmlmaomimarmrmaymsmkdmkmlgmgmltmtmonmnmrimimsamsmyamynaunanavnvnblnrndendndongnepnenldnlnnonnnobnbnornonyanyociocojiojoriorormomossospanpaperfaplipipolplporptpuspsquequrohrmronrorumrorunrnrusrusagsgsansasinsislksksloskslvslsmesesmosmsnasnsndsdsomsosotstspaessqisqsrdscsrpsrsswsssunsuswaswswesvtahtytamtatatttteltetgktgtgltlthathtibbotirtitontotsntntsotstuktkturtrtwitwuigugukrukurduruzbuzvenvevievivolvowelcywlnwawolwoxhoxhyidyiyoryozhazazhozhzulzu"

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    sub-int/2addr v0, v4

    if-nez v0, :cond_0

    add-int/lit8 v0, v2, 0x1

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_0
.end method

.method private static 癤욱븳援(I)Ljava/lang/String;
    .locals 3

    mul-int/lit8 v0, p0, 0x5

    const-string v1, "aaraaabkabafrafakaakalbsqamhamaraararganarmhyasmasavaavaveaeaymayazeazbakbabambmbaqeubelbebenbnbihbhbisbibodbobosbsbrebrbulbgburmycatcacescschachchecechizhchucuchvcvcorkwcoscocrecrcymcyczecsdandadeudedivdvdutnldzodzellelengenepoeoesteteuseueweeefaofofasfafijfjfinfifrafrfrefrfryfyfulffgeokagerdeglagdglegaglgglglvgvgreelgrngngujguhaththauhahebheherhzhinhihmohohrvhrhunhuhyehyiboigiceisidoioiiiiiikuiuileieinaiaindidipkikislisitaitjavjvjpnjakalklkanknkaskskatkakaukrkazkkkhmkmkikkikinrwkirkykomkvkonkgkorkokuakjkurkulaololatlalavlvlimlilinlnlitltltzlblubluluglgmacmkmahmhmalmlmaomimarmrmaymsmkdmkmlgmgmltmtmonmnmrimimsamsmyamynaunanavnvnblnrndendndongnepnenldnlnnonnnobnbnornonyanyociocojiojoriorormomossospanpaperfaplipipolplporptpuspsquequrohrmronrorumrorunrnrusrusagsgsansasinsislksksloskslvslsmesesmosmsnasnsndsdsomsosotstspaessqisqsrdscsrpsrsswsssunsuswaswswesvtahtytamtatatttteltetgktgtgltlthathtibbotirtitontotsntntsotstuktkturtrtwitwuigugukrukurduruzbuzvenvevievivolvowelcywlnwawolwoxhoxhyidyiyoryozhazazhozhzulzu"

    add-int/lit8 v2, v0, 0x3

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static 癤욱븳援(Ljava/lang/String;)Ljava/util/Locale;
    .locals 7

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "_-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v0, v1

    if-lez v0, :cond_4

    aget-object v0, v1, v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    aget-object v0, v1, v3

    invoke-static {v0}, Lek;->궗(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    aget-object v0, v1, v3

    :cond_0
    :goto_0
    array-length v2, v1

    if-le v2, v4, :cond_3

    aget-object v2, v1, v4

    array-length v3, v1

    if-le v3, v5, :cond_2

    aget-object v1, v1, v5

    move-object v6, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v6

    :goto_1
    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, v2, v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_1
    aget-object v0, v1, v3

    goto :goto_0

    :cond_2
    const-string v1, ""

    move-object v6, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_1

    :cond_3
    const-string v1, ""

    move-object v2, v0

    move-object v0, v1

    goto :goto_1

    :cond_4
    const-string v0, ""

    move-object v1, v0

    move-object v2, v0

    goto :goto_1
.end method

.method private static 궗(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    sget v0, Lek;->癤욱븳援:I

    move v2, v1

    :cond_0
    :goto_0
    if-lt v2, v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_1
    sub-int v1, v0, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v2

    invoke-static {p0, v1}, Lek;->癤욱븳援(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v1}, Lek;->癤욱븳援(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    if-gez v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    if-lez v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    move v2, v1

    goto :goto_0
.end method
