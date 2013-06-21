.class Lbe/yakupkalin/bday/HappyBirthdayMain$2;
.super Ljava/lang/Object;
.source "HappyBirthdayMain.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/yakupkalin/bday/HappyBirthdayMain;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbe/yakupkalin/bday/HappyBirthdayMain;


# direct methods
.method constructor <init>(Lbe/yakupkalin/bday/HappyBirthdayMain;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbe/yakupkalin/bday/HappyBirthdayMain$2;->this$0:Lbe/yakupkalin/bday/HappyBirthdayMain;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 51
    iget-object v0, p0, Lbe/yakupkalin/bday/HappyBirthdayMain$2;->this$0:Lbe/yakupkalin/bday/HappyBirthdayMain;

    #getter for: Lbe/yakupkalin/bday/HappyBirthdayMain;->btnStatus:Landroid/widget/Button;
    invoke-static {v0}, Lbe/yakupkalin/bday/HappyBirthdayMain;->access$0(Lbe/yakupkalin/bday/HappyBirthdayMain;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 52
    return-void
.end method
