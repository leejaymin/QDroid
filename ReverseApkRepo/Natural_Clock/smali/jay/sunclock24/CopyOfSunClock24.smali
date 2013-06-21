.class public Ljay/sunclock24/CopyOfSunClock24;
.super Landroid/app/Activity;
.source "CopyOfSunClock24.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljay/sunclock24/CopyOfSunClock24$SampleView;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    new-instance v0, Ljava/util/GregorianCalendar;

    const/16 v1, 0x7df

    const/16 v2, 0x9

    const/16 v3, 0x17

    const/16 v4, 0xc

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ljava/util/GregorianCalendar;-><init>(IIIII)V

    .line 38
    .local v0, fut:Ljava/util/GregorianCalendar;
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v6

    .line 40
    .local v6, in:Ljava/util/Date;
    new-instance v7, Ljay/sunclock24/CopyOfSunClock24$SampleView;

    invoke-direct {v7, p0, p0, v6}, Ljay/sunclock24/CopyOfSunClock24$SampleView;-><init>(Ljay/sunclock24/CopyOfSunClock24;Landroid/content/Context;Ljava/util/Date;)V

    .line 43
    .local v7, s:Ljay/sunclock24/CopyOfSunClock24$SampleView;
    invoke-virtual {p0, v7}, Ljay/sunclock24/CopyOfSunClock24;->setContentView(Landroid/view/View;)V

    .line 45
    return-void
.end method
