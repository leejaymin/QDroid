.class Lcom/virtuallyabstract/eve/SkillInfo$CustomSpinner;
.super Landroid/widget/Spinner;
.source "SkillInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/virtuallyabstract/eve/SkillInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomSpinner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/virtuallyabstract/eve/SkillInfo;


# direct methods
.method public constructor <init>(Lcom/virtuallyabstract/eve/SkillInfo;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "c"

    .prologue
    .line 211
    iput-object p1, p0, Lcom/virtuallyabstract/eve/SkillInfo$CustomSpinner;->this$0:Lcom/virtuallyabstract/eve/SkillInfo;

    .line 210
    invoke-direct {p0, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "di"
    .parameter "which"

    .prologue
    .line 215
    invoke-super {p0, p1, p2}, Landroid/widget/Spinner;->onClick(Landroid/content/DialogInterface;I)V

    .line 217
    iget-object v0, p0, Lcom/virtuallyabstract/eve/SkillInfo$CustomSpinner;->this$0:Lcom/virtuallyabstract/eve/SkillInfo;

    iget-object v0, v0, Lcom/virtuallyabstract/eve/SkillInfo;->spinLevels:Lcom/virtuallyabstract/eve/SkillInfo$CustomSpinner2;

    invoke-virtual {v0}, Lcom/virtuallyabstract/eve/SkillInfo$CustomSpinner2;->performClick()Z

    .line 218
    return-void
.end method
