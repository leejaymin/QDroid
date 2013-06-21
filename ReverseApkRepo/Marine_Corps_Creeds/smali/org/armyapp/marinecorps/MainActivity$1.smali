.class Lorg/armyapp/marinecorps/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/armyapp/marinecorps/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/armyapp/marinecorps/MainActivity;


# direct methods
.method constructor <init>(Lorg/armyapp/marinecorps/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/armyapp/marinecorps/MainActivity$1;->this$0:Lorg/armyapp/marinecorps/MainActivity;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lorg/armyapp/marinecorps/MainActivity$1;)Lorg/armyapp/marinecorps/MainActivity;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lorg/armyapp/marinecorps/MainActivity$1;->this$0:Lorg/armyapp/marinecorps/MainActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 61
    iget-object v4, p0, Lorg/armyapp/marinecorps/MainActivity$1;->this$0:Lorg/armyapp/marinecorps/MainActivity;

    const v5, 0x7f030001

    invoke-virtual {v4, v5}, Lorg/armyapp/marinecorps/MainActivity;->setContentView(I)V

    .line 64
    iget-object v4, p0, Lorg/armyapp/marinecorps/MainActivity$1;->this$0:Lorg/armyapp/marinecorps/MainActivity;

    .line 65
    const/high16 v5, 0x7f04

    .line 64
    invoke-static {v4, v5}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    .line 68
    .local v1, mplayer:Landroid/media/MediaPlayer;
    iget-object v4, p0, Lorg/armyapp/marinecorps/MainActivity$1;->this$0:Lorg/armyapp/marinecorps/MainActivity;

    const v5, 0x7f060004

    invoke-virtual {v4, v5}, Lorg/armyapp/marinecorps/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 69
    .local v2, play:Landroid/widget/Button;
    new-instance v4, Lorg/armyapp/marinecorps/MainActivity$1$1;

    invoke-direct {v4, p0, v1}, Lorg/armyapp/marinecorps/MainActivity$1$1;-><init>(Lorg/armyapp/marinecorps/MainActivity$1;Landroid/media/MediaPlayer;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v4, p0, Lorg/armyapp/marinecorps/MainActivity$1;->this$0:Lorg/armyapp/marinecorps/MainActivity;

    const v5, 0x7f060005

    invoke-virtual {v4, v5}, Lorg/armyapp/marinecorps/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 85
    .local v3, stop:Landroid/widget/Button;
    new-instance v4, Lorg/armyapp/marinecorps/MainActivity$1$2;

    invoke-direct {v4, p0, v1}, Lorg/armyapp/marinecorps/MainActivity$1$2;-><init>(Lorg/armyapp/marinecorps/MainActivity$1;Landroid/media/MediaPlayer;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v4, p0, Lorg/armyapp/marinecorps/MainActivity$1;->this$0:Lorg/armyapp/marinecorps/MainActivity;

    const v5, 0x7f060003

    invoke-virtual {v4, v5}, Lorg/armyapp/marinecorps/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 93
    .local v0, BackButton:Landroid/widget/Button;
    new-instance v4, Lorg/armyapp/marinecorps/MainActivity$1$3;

    invoke-direct {v4, p0, v1}, Lorg/armyapp/marinecorps/MainActivity$1$3;-><init>(Lorg/armyapp/marinecorps/MainActivity$1;Landroid/media/MediaPlayer;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    return-void
.end method
