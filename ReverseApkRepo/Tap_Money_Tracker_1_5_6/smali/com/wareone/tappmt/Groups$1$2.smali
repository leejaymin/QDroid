.class Lcom/wareone/tappmt/Groups$1$2;
.super Ljava/lang/Object;
.source "Groups.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/Groups$1;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wareone/tappmt/Groups$1;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/Groups$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/Groups$1$2;->this$1:Lcom/wareone/tappmt/Groups$1;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 91
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 92
    return-void
.end method
