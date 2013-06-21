.class Lcom/spritefish/fastburstcamera/activities/RecorderActivity$10;
.super Ljava/lang/Object;
.source "RecorderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->initUiControls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$10;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    .line 987
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity$10;)Lcom/spritefish/fastburstcamera/activities/RecorderActivity;
    .locals 1
    .parameter

    .prologue
    .line 987
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$10;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "arg0"

    .prologue
    .line 991
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$10;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 993
    .local v0, alert:Landroid/app/AlertDialog$Builder;
    const-string v2, "Set label"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 994
    const-string v2, "Labels are used when naming photos"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 997
    new-instance v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$10;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 998
    .local v1, input:Landroid/widget/EditText;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 999
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$10;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "labelprefix"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1000
    const-string v2, "Ok"

    new-instance v3, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$10$1;

    invoke-direct {v3, p0, v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$10$1;-><init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity$10;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1010
    const-string v2, "Cancel"

    new-instance v3, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$10$2;

    invoke-direct {v3, p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$10$2;-><init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity$10;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1016
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1017
    return-void
.end method
