.class Lcom/kt/olleh/inapp/dialog/DialogCheck$1;
.super Ljava/lang/Object;
.source "DialogCheck.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kt/olleh/inapp/dialog/DialogCheck;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kt/olleh/inapp/dialog/DialogCheck;


# direct methods
.method constructor <init>(Lcom/kt/olleh/inapp/dialog/DialogCheck;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck$1;->this$0:Lcom/kt/olleh/inapp/dialog/DialogCheck;

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 171
    if-eqz p2, :cond_0

    .line 172
    const/4 v0, 0x1

    sput-boolean v0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->check:Z

    .line 176
    :goto_0
    return-void

    .line 174
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->check:Z

    goto :goto_0
.end method
