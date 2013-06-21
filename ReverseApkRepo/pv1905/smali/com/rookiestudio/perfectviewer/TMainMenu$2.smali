.class Lcom/rookiestudio/perfectviewer/TMainMenu$2;
.super Ljava/lang/Object;
.source "TMainMenu.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rookiestudio/perfectviewer/TMainMenu;->Hide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rookiestudio/perfectviewer/TMainMenu;


# direct methods
.method constructor <init>(Lcom/rookiestudio/perfectviewer/TMainMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$2;->this$0:Lcom/rookiestudio/perfectviewer/TMainMenu;

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "_animation"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$2;->this$0:Lcom/rookiestudio/perfectviewer/TMainMenu;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/rookiestudio/perfectviewer/TMainMenu;->setVisibility(I)V

    .line 227
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 230
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 233
    return-void
.end method
