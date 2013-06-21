.class Llj;
.super Lec;


# instance fields
.field private final 癤욱븳援:Lql;

.field private final 궗:Ljava/lang/String;


# direct methods
.method constructor <init>(Lql;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lec;-><init>()V

    iput-object p1, p0, Llj;->癤욱븳援:Lql;

    iput-object p2, p0, Llj;->궗:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Llj;->癤욱븳援([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs 癤욱븳援([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    :try_start_0
    iget-object v0, p0, Llj;->癤욱븳援:Lql;

    iget-object v1, p0, Llj;->궗:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lql;->弱밧(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Llj;->癤욱븳援:Lql;

    invoke-virtual {v0}, Lql;->먯꽌()V

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Llj;->癤욱븳援:Lql;

    invoke-virtual {v1}, Lql;->먯꽌()V

    throw v0
.end method
