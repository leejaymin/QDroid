.class Lnf;
.super Lec;


# instance fields
.field final synthetic 癤욱븳援:Lnb;

.field private final 궗:Lcom/mxtech/subtitle/SubStationAlphaMedia;

.field private final 먯꽌:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnb;Lcom/mxtech/subtitle/SubStationAlphaMedia;)V
    .locals 1

    iput-object p1, p0, Lnf;->癤욱븳援:Lnb;

    invoke-direct {p0}, Lec;-><init>()V

    iput-object p2, p0, Lnf;->궗:Lcom/mxtech/subtitle/SubStationAlphaMedia;

    invoke-static {}, Lms;->쇰뒗()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnf;->먯꽌:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnf;->癤욱븳援([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnf;->癤욱븳援(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    iget-object v0, p0, Lnf;->癤욱븳援:Lnb;

    invoke-static {v0}, Lnb;->ㅼ꽑嫄(Lnb;)Lnc;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lnc;->궗(Z)V

    return-void
.end method

.method protected varargs 癤욱븳援([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    iget-object v0, p0, Lnf;->궗:Lcom/mxtech/subtitle/SubStationAlphaMedia;

    iget-object v1, p0, Lnf;->먯꽌:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mxtech/subtitle/SubStationAlphaMedia;->setupFonts(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected 癤욱븳援(Ljava/lang/Void;)V
    .locals 2

    iget-object v0, p0, Lnf;->癤욱븳援:Lnb;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnb;->癤욱븳援(Lnb;Lnf;)V

    iget-object v0, p0, Lnf;->癤욱븳援:Lnb;

    invoke-static {v0}, Lnb;->ㅼ꽑嫄(Lnb;)Lnc;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lnc;->궗(Z)V

    return-void
.end method
