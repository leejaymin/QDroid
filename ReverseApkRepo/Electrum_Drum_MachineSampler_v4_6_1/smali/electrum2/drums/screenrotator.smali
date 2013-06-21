.class public Lelectrum2/drums/screenrotator;
.super Ljava/lang/Object;
.source "screenrotator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public AllowRotate(Landroid/app/Activity;)V
    .locals 4
    .parameter "mainactivityin"

    .prologue
    const/4 v3, 0x4

    .line 29
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 31
    .local v0, config:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v2, 0xf

    .line 33
    .local v1, size:I
    if-ne v1, v3, :cond_0

    .line 36
    invoke-virtual {p1, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 41
    :cond_0
    return-void
.end method
