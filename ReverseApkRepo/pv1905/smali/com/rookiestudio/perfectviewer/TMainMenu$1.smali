.class Lcom/rookiestudio/perfectviewer/TMainMenu$1;
.super Ljava/lang/Object;
.source "TMainMenu.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rookiestudio/perfectviewer/TMainMenu;->Show()V
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
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$1;->this$0:Lcom/rookiestudio/perfectviewer/TMainMenu;

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "_animation"

    .prologue
    .line 204
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 207
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$1;->this$0:Lcom/rookiestudio/perfectviewer/TMainMenu;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Lcom/rookiestudio/perfectviewer/TMainMenu;->setGravity(I)V

    .line 211
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$1;->this$0:Lcom/rookiestudio/perfectviewer/TMainMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/rookiestudio/perfectviewer/TMainMenu;->setVisibility(I)V

    .line 212
    return-void
.end method
