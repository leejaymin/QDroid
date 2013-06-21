.class Lcom/rookiestudio/perfectviewer/TNavigateBar$1;
.super Ljava/lang/Object;
.source "TNavigateBar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rookiestudio/perfectviewer/TNavigateBar;->Show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rookiestudio/perfectviewer/TNavigateBar;


# direct methods
.method constructor <init>(Lcom/rookiestudio/perfectviewer/TNavigateBar;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TNavigateBar$1;->this$0:Lcom/rookiestudio/perfectviewer/TNavigateBar;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "_animation"

    .prologue
    .line 126
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 129
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TNavigateBar$1;->this$0:Lcom/rookiestudio/perfectviewer/TNavigateBar;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Lcom/rookiestudio/perfectviewer/TNavigateBar;->setGravity(I)V

    .line 133
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TNavigateBar$1;->this$0:Lcom/rookiestudio/perfectviewer/TNavigateBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/rookiestudio/perfectviewer/TNavigateBar;->setVisibility(I)V

    .line 134
    return-void
.end method
