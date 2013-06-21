.class public Ljay/sunclock24/SunClock24;
.super Landroid/app/Activity;
.source "SunClock24.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljay/sunclock24/SunClock24$SampleView;
    }
.end annotation


# static fields
.field public static Iday:I

.field public static Imonth:I

.field public static Iyear:I

.field public static in:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Ljay/sunclock24/SunClock24;->in:Ljava/util/Date;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const-string v1, "ON CREATE CALLED"

    sget-object v2, Ljay/sunclock24/SunClock24;->in:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    new-instance v0, Ljay/sunclock24/SunClock24$SampleView;

    invoke-direct {v0, p0, p0}, Ljay/sunclock24/SunClock24$SampleView;-><init>(Ljay/sunclock24/SunClock24;Landroid/content/Context;)V

    .line 51
    .local v0, s:Ljay/sunclock24/SunClock24$SampleView;
    invoke-virtual {p0, v0}, Ljay/sunclock24/SunClock24;->setContentView(Landroid/view/View;)V

    .line 53
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 56
    invoke-virtual {p0}, Ljay/sunclock24/SunClock24;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 57
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f05

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 58
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 64
    new-instance v0, Landroid/content/Intent;

    const-class v2, Ljay/sunclock24/DateChanger;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Ljay/sunclock24/SunClock24;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    .local v1, intent2:Landroid/content/Intent;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 85
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 72
    :pswitch_0
    invoke-virtual {p0, v0}, Ljay/sunclock24/SunClock24;->startActivity(Landroid/content/Intent;)V

    move v2, v3

    .line 73
    goto :goto_0

    .line 76
    :pswitch_1
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    sput-object v2, Ljay/sunclock24/SunClock24;->in:Ljava/util/Date;

    .line 78
    invoke-virtual {p0, v1}, Ljay/sunclock24/SunClock24;->startActivity(Landroid/content/Intent;)V

    move v2, v3

    .line 82
    goto :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch 0x7f060002
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
