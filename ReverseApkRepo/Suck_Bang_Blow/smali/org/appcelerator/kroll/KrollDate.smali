.class public Lorg/appcelerator/kroll/KrollDate;
.super Ljava/util/Date;
.source "KrollDate.java"


# instance fields
.field protected jsDate:Lorg/mozilla/javascript/Scriptable;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/Scriptable;)V
    .locals 3
    .parameter "jsDate"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/appcelerator/kroll/KrollDate;->jsDate:Lorg/mozilla/javascript/Scriptable;

    .line 22
    const-string v2, "getTime"

    invoke-virtual {p0, v2}, Lorg/appcelerator/kroll/KrollDate;->callLongMethod(Ljava/lang/String;)J

    move-result-wide v0

    .line 24
    .local v0, millis:J
    invoke-virtual {p0, v0, v1}, Lorg/appcelerator/kroll/KrollDate;->setTime(J)V

    .line 25
    return-void
.end method


# virtual methods
.method protected callLongMethod(Ljava/lang/String;)J
    .locals 2
    .parameter "name"

    .prologue
    .line 28
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollDate;->jsDate:Lorg/mozilla/javascript/Scriptable;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lorg/mozilla/javascript/ScriptableObject;->callMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getJSDate()Lorg/mozilla/javascript/Scriptable;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollDate;->jsDate:Lorg/mozilla/javascript/Scriptable;

    return-object v0
.end method
