.class Lqs;
.super Ljava/util/HashSet;


# instance fields
.field final 癤욱븳援:Ljava/io/File;

.field final 궗:Z


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/util/Map;)V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lqs;->癤욱븳援:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lms;->ㅼ꽑嫄곗쓽:Z

    if-eqz v1, :cond_0

    const-string v1, ".nomedia"

    invoke-static {v0, v1, p2}, Lcom/mxtech/FileUtils;->癤욱븳援(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    sget-boolean v1, Lms;->앸ぐ:Z

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/mxtech/FileUtils;->ㅼ꽑嫄(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lqs;->궗:Z

    return-void

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
