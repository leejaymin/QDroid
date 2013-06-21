.class Lcom/jjcgames/android/airhockey/Game$1;
.super Ljava/lang/Thread;
.source "Game.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jjcgames/android/airhockey/Game;->go(Landroid/content/Context;Lcom/jjcgames/android/airhockey/GameActivity$Finisher;Landroid/view/SurfaceHolder;IIFFLandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jjcgames/android/airhockey/Game;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$finisher:Lcom/jjcgames/android/airhockey/GameActivity$Finisher;

.field private final synthetic val$height:I

.field private final synthetic val$holder:Landroid/view/SurfaceHolder;

.field private final synthetic val$intent:Landroid/content/Intent;

.field private final synthetic val$width:I

.field private final synthetic val$xdpi:F

.field private final synthetic val$ydpi:F


# direct methods
.method constructor <init>(Lcom/jjcgames/android/airhockey/Game;Ljava/lang/String;Landroid/content/Context;Lcom/jjcgames/android/airhockey/GameActivity$Finisher;Landroid/view/SurfaceHolder;IIFFLandroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jjcgames/android/airhockey/Game$1;->this$0:Lcom/jjcgames/android/airhockey/Game;

    iput-object p3, p0, Lcom/jjcgames/android/airhockey/Game$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/jjcgames/android/airhockey/Game$1;->val$finisher:Lcom/jjcgames/android/airhockey/GameActivity$Finisher;

    iput-object p5, p0, Lcom/jjcgames/android/airhockey/Game$1;->val$holder:Landroid/view/SurfaceHolder;

    iput p6, p0, Lcom/jjcgames/android/airhockey/Game$1;->val$width:I

    iput p7, p0, Lcom/jjcgames/android/airhockey/Game$1;->val$height:I

    iput p8, p0, Lcom/jjcgames/android/airhockey/Game$1;->val$xdpi:F

    iput p9, p0, Lcom/jjcgames/android/airhockey/Game$1;->val$ydpi:F

    iput-object p10, p0, Lcom/jjcgames/android/airhockey/Game$1;->val$intent:Landroid/content/Intent;

    .line 212
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 215
    iget-object v0, p0, Lcom/jjcgames/android/airhockey/Game$1;->this$0:Lcom/jjcgames/android/airhockey/Game;

    iget-object v1, p0, Lcom/jjcgames/android/airhockey/Game$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/jjcgames/android/airhockey/Game$1;->val$finisher:Lcom/jjcgames/android/airhockey/GameActivity$Finisher;

    iget-object v3, p0, Lcom/jjcgames/android/airhockey/Game$1;->val$holder:Landroid/view/SurfaceHolder;

    .line 216
    iget v4, p0, Lcom/jjcgames/android/airhockey/Game$1;->val$width:I

    iget v5, p0, Lcom/jjcgames/android/airhockey/Game$1;->val$height:I

    iget v6, p0, Lcom/jjcgames/android/airhockey/Game$1;->val$xdpi:F

    iget v7, p0, Lcom/jjcgames/android/airhockey/Game$1;->val$ydpi:F

    iget-object v8, p0, Lcom/jjcgames/android/airhockey/Game$1;->val$intent:Landroid/content/Intent;

    #calls: Lcom/jjcgames/android/airhockey/Game;->runGame(Landroid/content/Context;Lcom/jjcgames/android/airhockey/GameActivity$Finisher;Landroid/view/SurfaceHolder;IIFFLandroid/content/Intent;)V
    invoke-static/range {v0 .. v8}, Lcom/jjcgames/android/airhockey/Game;->access$3(Lcom/jjcgames/android/airhockey/Game;Landroid/content/Context;Lcom/jjcgames/android/airhockey/GameActivity$Finisher;Landroid/view/SurfaceHolder;IIFFLandroid/content/Intent;)V

    .line 217
    return-void
.end method
