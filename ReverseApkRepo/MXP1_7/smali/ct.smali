.class public Lct;
.super Ljava/lang/Object;


# static fields
.field private static 癤욱븳援:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "GoogleAdsAssertion"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lct;->癤욱븳援:Z

    return-void
.end method

.method public static 癤욱븳援(Ljava/lang/Object;)V
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Assertion that an object is not null failed."

    invoke-static {v0, v1}, Lct;->먯꽌(ZLjava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static 癤욱븳援(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Assertion that \'a\' and \'b\' refer to the same object failed.a: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", b: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lct;->먯꽌(ZLjava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static 癤욱븳援(Ljava/lang/String;)V
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a non empty string, got: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lct;->먯꽌(ZLjava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static 癤욱븳援(Z)V
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Assertion failed."

    invoke-static {v0, v1}, Lct;->먯꽌(ZLjava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static 癤욱븳援(ZLjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lct;->먯꽌(ZLjava/lang/String;)V

    return-void
.end method

.method public static 궗(ZLjava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0, p1}, Lct;->먯꽌(ZLjava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static 먯꽌(ZLjava/lang/String;)V
    .locals 2

    const-string v0, "GoogleAdsAssertion"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lct;->癤욱븳援:Z

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    if-nez p0, :cond_0

    new-instance v0, Lcu;

    invoke-direct {v0, p1}, Lcu;-><init>(Ljava/lang/String;)V

    const-string v1, "GoogleAdsAssertion"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0
.end method
