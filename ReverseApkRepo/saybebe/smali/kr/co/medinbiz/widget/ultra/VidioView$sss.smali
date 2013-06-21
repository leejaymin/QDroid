.class Lkr/co/medinbiz/widget/ultra/VidioView$sss;
.super Landroid/widget/VideoView;
.source "VidioView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkr/co/medinbiz/widget/ultra/VidioView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "sss"
.end annotation


# instance fields
.field final synthetic this$0:Lkr/co/medinbiz/widget/ultra/VidioView;


# direct methods
.method public constructor <init>(Lkr/co/medinbiz/widget/ultra/VidioView;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 170
    iput-object p1, p0, Lkr/co/medinbiz/widget/ultra/VidioView$sss;->this$0:Lkr/co/medinbiz/widget/ultra/VidioView;

    .line 171
    invoke-direct {p0, p2}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 172
    return-void
.end method


# virtual methods
.method public setVideoURI(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 176
    invoke-super {p0, p1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 177
    return-void
.end method
