.class Lcom/virtuallyabstract/eve/PlanInfo$AddRemoveDialog;
.super Landroid/app/Dialog;
.source "PlanInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/virtuallyabstract/eve/PlanInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddRemoveDialog"
.end annotation


# instance fields
.field private parent:Landroid/content/Context;

.field private pos:I

.field private ret:Ljava/lang/String;

.field final synthetic this$0:Lcom/virtuallyabstract/eve/PlanInfo;


# direct methods
.method public constructor <init>(Lcom/virtuallyabstract/eve/PlanInfo;Landroid/content/Context;I)V
    .locals 1
    .parameter
    .parameter "c"
    .parameter "position"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/virtuallyabstract/eve/PlanInfo$AddRemoveDialog;->this$0:Lcom/virtuallyabstract/eve/PlanInfo;

    .line 158
    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 152
    const-string v0, "info"

    iput-object v0, p0, Lcom/virtuallyabstract/eve/PlanInfo$AddRemoveDialog;->ret:Ljava/lang/String;

    .line 159
    iput p3, p0, Lcom/virtuallyabstract/eve/PlanInfo$AddRemoveDialog;->pos:I

    .line 160
    iput-object p2, p0, Lcom/virtuallyabstract/eve/PlanInfo$AddRemoveDialog;->parent:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$0(Lcom/virtuallyabstract/eve/PlanInfo$AddRemoveDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/virtuallyabstract/eve/PlanInfo$AddRemoveDialog;->removeSkill()V

    return-void
.end method

.method static synthetic access$1(Lcom/virtuallyabstract/eve/PlanInfo$AddRemoveDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/virtuallyabstract/eve/PlanInfo$AddRemoveDialog;->showInfo()V

    return-void
.end method

.method private removeSkill()V
    .locals 5

    .prologue
    const-string v4, "REMOVE"

    .line 178
    iget-object v2, p0, Lcom/virtuallyabstract/eve/PlanInfo$AddRemoveDialog;->this$0:Lcom/virtuallyabstract/eve/PlanInfo;

    iget-object v2, v2, Lcom/virtuallyabstract/eve/PlanInfo;->data:Ljava/util/ArrayList;

    iget v3, p0, Lcom/virtuallyabstract/eve/PlanInfo$AddRemoveDialog;->pos:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "id"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 179
    .local v1, skillID:Ljava/lang/String;
    iget-object v2, p0, Lcom/virtuallyabstract/eve/PlanInfo$AddRemoveDialog;->this$0:Lcom/virtuallyabstract/eve/PlanInfo;

    iget-object v2, v2, Lcom/virtuallyabstract/eve/PlanInfo;->data:Ljava/util/ArrayList;

    iget v3, p0, Lcom/virtuallyabstract/eve/PlanInfo$AddRemoveDialog;->pos:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "level"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 180
    .local v0, level:Ljava/lang/String;
    iget-object v2, p0, Lcom/virtuallyabstract/eve/PlanInfo$AddRemoveDialog;->this$0:Lcom/virtuallyabstract/eve/PlanInfo;

    iget-object v2, v2, Lcom/virtuallyabstract/eve/PlanInfo;->db:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    iget-object v3, p0, Lcom/virtuallyabstract/eve/PlanInfo$AddRemoveDialog;->this$0:Lcom/virtuallyabstract/eve/PlanInfo;

    iget-object v3, v3, Lcom/virtuallyabstract/eve/PlanInfo;->planID:Ljava/lang/String;

    invoke-virtual {v2, v3, v1, v0}, Lcom/virtuallyabstract/eve/SkillsDBHelper;->deleteFromPlan(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v2, p0, Lcom/virtuallyabstract/eve/PlanInfo$AddRemoveDialog;->this$0:Lcom/virtuallyabstract/eve/PlanInfo;

    iget-object v2, v2, Lcom/virtuallyabstract/eve/PlanInfo;->data:Ljava/util/ArrayList;

    iget v3, p0, Lcom/virtuallyabstract/eve/PlanInfo$AddRemoveDialog;->pos:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 182
    iget-object v2, p0, Lcom/virtuallyabstract/eve/PlanInfo$AddRemoveDialog;->this$0:Lcom/virtuallyabstract/eve/PlanInfo;

    iget-object v2, v2, Lcom/virtuallyabstract/eve/PlanInfo;->listMain:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/virtuallyabstract/eve/PlanInfo$AddRemoveDialog;->this$0:Lcom/virtuallyabstract/eve/PlanInfo;

    iget-object v3, v3, Lcom/virtuallyabstract/eve/PlanInfo;->adapterMain:Landroid/widget/SimpleAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 183
    iget-object v2, p0, Lcom/virtuallyabstract/eve/PlanInfo$AddRemoveDialog;->this$0:Lcom/virtuallyabstract/eve/PlanInfo;

    #calls: Lcom/virtuallyabstract/eve/PlanInfo;->populateList()V
    invoke-static {v2}, Lcom/virtuallyabstract/eve/PlanInfo;->access$0(Lcom/virtuallyabstract/eve/PlanInfo;)V

    .line 184
    const-string v2, "REMOVE"

    const-string v2, "REMOVE"

    invoke-static {v4, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return-void
.end method

.method private showInfo()V
    .locals 6

    .prologue
    const-string v5, "name"

    const-string v4, "INFO"

    .line 189
    iget-object v2, p0, Lcom/virtuallyabstract/eve/PlanInfo$AddRemoveDialog;->this$0:Lcom/virtuallyabstract/eve/PlanInfo;

    iget-object v2, v2, Lcom/virtuallyabstract/eve/PlanInfo;->data:Ljava/util/ArrayList;

    iget v3, p0, Lcom/virtuallyabstract/eve/PlanInfo$AddRemoveDialog;->pos:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "name"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 190
    .local v1, skillName:Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 191
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/virtuallyabstract/eve/PlanInfo$AddRemoveDialog;->parent:Landroid/content/Context;

    const-class v3, Lcom/virtuallyabstract/eve/SkillInfo;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 192
    .local v0, i:Landroid/content/Intent;
    const-string v2, "name"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    const-string v2, "char"

    iget-object v3, p0, Lcom/virtuallyabstract/eve/PlanInfo$AddRemoveDialog;->this$0:Lcom/virtuallyabstract/eve/PlanInfo;

    iget-object v3, v3, Lcom/virtuallyabstract/eve/PlanInfo;->charName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    invoke-virtual {p0}, Lcom/virtuallyabstract/eve/PlanInfo$AddRemoveDialog;->dismiss()V

    .line 195
    iget-object v2, p0, Lcom/virtuallyabstract/eve/PlanInfo$AddRemoveDialog;->parent:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 197
    const-string v2, "INFO"

    const-string v2, "INFO"

    invoke-static {v4, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "saved"

    .prologue
    .line 165
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 166
    const/high16 v2, 0x7f03

    invoke-virtual {p0, v2}, Lcom/virtuallyabstract/eve/PlanInfo$AddRemoveDialog;->setContentView(I)V

    .line 167
    const-string v2, "Options"

    invoke-virtual {p0, v2}, Lcom/virtuallyabstract/eve/PlanInfo$AddRemoveDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 169
    const/high16 v2, 0x7f05

    invoke-virtual {p0, v2}, Lcom/virtuallyabstract/eve/PlanInfo$AddRemoveDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 170
    .local v1, btnRemove:Landroid/widget/Button;
    new-instance v2, Lcom/virtuallyabstract/eve/PlanInfo$AddRemoveDialog$1;

    invoke-direct {v2, p0}, Lcom/virtuallyabstract/eve/PlanInfo$AddRemoveDialog$1;-><init>(Lcom/virtuallyabstract/eve/PlanInfo$AddRemoveDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    const v2, 0x7f050001

    invoke-virtual {p0, v2}, Lcom/virtuallyabstract/eve/PlanInfo$AddRemoveDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 173
    .local v0, btnInfo:Landroid/widget/Button;
    new-instance v2, Lcom/virtuallyabstract/eve/PlanInfo$AddRemoveDialog$2;

    invoke-direct {v2, p0}, Lcom/virtuallyabstract/eve/PlanInfo$AddRemoveDialog$2;-><init>(Lcom/virtuallyabstract/eve/PlanInfo$AddRemoveDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    return-void
.end method

.method public result()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/virtuallyabstract/eve/PlanInfo$AddRemoveDialog;->ret:Ljava/lang/String;

    return-object v0
.end method

.method public show()V
    .locals 0

    .prologue
    .line 202
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 203
    return-void
.end method
