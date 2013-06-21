.class Lcom/spritefish/fastburstcamera/activities/RecorderActivity$10$1;
.super Ljava/lang/Object;
.source "RecorderActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/activities/RecorderActivity$10;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$10;

.field private final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity$10;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$10$1;->this$1:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$10;

    iput-object p2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$10$1;->val$input:Landroid/widget/EditText;

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1002
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$10$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1003
    .local v1, value:Ljava/lang/String;
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$10$1;->this$1:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$10;

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity$10;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;
    invoke-static {v2}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$10;->access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity$10;)Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1004
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "labelprefix"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1006
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$10$1;->this$1:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$10;

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity$10;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;
    invoke-static {v2}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$10;->access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity$10;)Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-result-object v2

    #calls: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->updateLabel()V
    invoke-static {v2}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$20(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)V

    .line 1007
    return-void
.end method
