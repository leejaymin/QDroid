.class Lmt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FileFilter;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-boolean v1, Lms;->앸ぐ:Z

    if-nez v1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->isHidden()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    invoke-static {p1}, Lcom/mxtech/FileUtils;->궗(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lms;->弱방떙()Ljava/util/TreeMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
