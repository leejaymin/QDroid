.class Lcom/wareone/tappmt/Groups$3;
.super Ljava/lang/Object;
.source "Groups.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/Groups;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wareone/tappmt/Groups;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/Groups;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/Groups$3;->this$0:Lcom/wareone/tappmt/Groups;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/wareone/tappmt/Groups$3;)Lcom/wareone/tappmt/Groups;
    .locals 1
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/wareone/tappmt/Groups$3;->this$0:Lcom/wareone/tappmt/Groups;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 141
    new-instance v0, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 142
    .local v0, input:Landroid/widget/EditText;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/wareone/tappmt/Groups$3;->this$0:Lcom/wareone/tappmt/Groups;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 145
    const v2, 0x7f090063

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 146
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 147
    const v2, 0x7f09004c

    new-instance v3, Lcom/wareone/tappmt/Groups$3$1;

    invoke-direct {v3, p0, v0}, Lcom/wareone/tappmt/Groups$3$1;-><init>(Lcom/wareone/tappmt/Groups$3;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 168
    const v2, 0x7f09004b

    new-instance v3, Lcom/wareone/tappmt/Groups$3$2;

    invoke-direct {v3, p0}, Lcom/wareone/tappmt/Groups$3$2;-><init>(Lcom/wareone/tappmt/Groups$3;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 175
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 176
    return-void
.end method
