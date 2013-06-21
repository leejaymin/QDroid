.class Lcom/virtuallyabstract/eve/SkillPlanner$InputDialog;
.super Landroid/app/Dialog;
.source "SkillPlanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/virtuallyabstract/eve/SkillPlanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InputDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/virtuallyabstract/eve/SkillPlanner;


# direct methods
.method public constructor <init>(Lcom/virtuallyabstract/eve/SkillPlanner;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "c"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/virtuallyabstract/eve/SkillPlanner$InputDialog;->this$0:Lcom/virtuallyabstract/eve/SkillPlanner;

    .line 115
    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 4

    .prologue
    .line 136
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 137
    invoke-virtual {p0}, Lcom/virtuallyabstract/eve/SkillPlanner$InputDialog;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/virtuallyabstract/eve/SkillPlanner$InputDialog;->this$0:Lcom/virtuallyabstract/eve/SkillPlanner;

    iget-object v0, v0, Lcom/virtuallyabstract/eve/SkillPlanner;->db:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    iget-object v1, p0, Lcom/virtuallyabstract/eve/SkillPlanner$InputDialog;->this$0:Lcom/virtuallyabstract/eve/SkillPlanner;

    iget-object v1, v1, Lcom/virtuallyabstract/eve/SkillPlanner;->name:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/virtuallyabstract/eve/SkillPlanner$InputDialog;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/virtuallyabstract/eve/SkillsDBHelper;->addPlan(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/virtuallyabstract/eve/SkillPlanner$InputDialog;->this$0:Lcom/virtuallyabstract/eve/SkillPlanner;

    #calls: Lcom/virtuallyabstract/eve/SkillPlanner;->populatePlans()V
    invoke-static {v0}, Lcom/virtuallyabstract/eve/SkillPlanner;->access$0(Lcom/virtuallyabstract/eve/SkillPlanner;)V

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    const v0, 0x7f050009

    invoke-virtual {p0, v0}, Lcom/virtuallyabstract/eve/SkillPlanner$InputDialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "saved"

    .prologue
    .line 120
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 121
    const v1, 0x7f030002

    invoke-virtual {p0, v1}, Lcom/virtuallyabstract/eve/SkillPlanner$InputDialog;->setContentView(I)V

    .line 123
    const-string v1, "Plan Name:"

    invoke-virtual {p0, v1}, Lcom/virtuallyabstract/eve/SkillPlanner$InputDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 125
    const v1, 0x7f05000a

    invoke-virtual {p0, v1}, Lcom/virtuallyabstract/eve/SkillPlanner$InputDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 126
    .local v0, btnOk:Landroid/widget/Button;
    new-instance v1, Lcom/virtuallyabstract/eve/SkillPlanner$InputDialog$1;

    invoke-direct {v1, p0}, Lcom/virtuallyabstract/eve/SkillPlanner$InputDialog$1;-><init>(Lcom/virtuallyabstract/eve/SkillPlanner$InputDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    return-void
.end method
