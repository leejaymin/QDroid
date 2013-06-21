.class Lcom/rookiestudio/perfectviewer/THardwareKeyManagement$2;
.super Ljava/lang/Object;
.source "THardwareKeyManagement.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;->AddKey(Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$KeyCodeEdit:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/widget/EditText;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement$2;->val$KeyCodeEdit:Landroid/widget/EditText;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement$2;->val$KeyCodeEdit:Landroid/widget/EditText;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 164
    const/4 v0, 0x1

    return v0
.end method
