.class Lcom/virtuallyabstract/eve/SkillPlanner$InputDialog$1;
.super Ljava/lang/Object;
.source "SkillPlanner.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/virtuallyabstract/eve/SkillPlanner$InputDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/virtuallyabstract/eve/SkillPlanner$InputDialog;


# direct methods
.method constructor <init>(Lcom/virtuallyabstract/eve/SkillPlanner$InputDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/virtuallyabstract/eve/SkillPlanner$InputDialog$1;->this$1:Lcom/virtuallyabstract/eve/SkillPlanner$InputDialog;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/virtuallyabstract/eve/SkillPlanner$InputDialog$1;->this$1:Lcom/virtuallyabstract/eve/SkillPlanner$InputDialog;

    invoke-virtual {v0}, Lcom/virtuallyabstract/eve/SkillPlanner$InputDialog;->dismiss()V

    return-void
.end method
