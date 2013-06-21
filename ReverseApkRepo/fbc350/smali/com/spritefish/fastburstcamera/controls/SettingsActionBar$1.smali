.class Lcom/spritefish/fastburstcamera/controls/SettingsActionBar$1;
.super Ljava/lang/Object;
.source "SettingsActionBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/controls/SettingsActionBar;->getActionItem(Landroid/view/LayoutInflater;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spritefish/fastburstcamera/controls/SettingsActionBar;

.field private final synthetic val$rg:Landroid/widget/RadioGroup;


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/controls/SettingsActionBar;Landroid/widget/RadioGroup;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/controls/SettingsActionBar$1;->this$0:Lcom/spritefish/fastburstcamera/controls/SettingsActionBar;

    iput-object p2, p0, Lcom/spritefish/fastburstcamera/controls/SettingsActionBar$1;->val$rg:Landroid/widget/RadioGroup;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/controls/SettingsActionBar$1;->this$0:Lcom/spritefish/fastburstcamera/controls/SettingsActionBar;

    iget-object v1, p0, Lcom/spritefish/fastburstcamera/controls/SettingsActionBar$1;->val$rg:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Lcom/spritefish/fastburstcamera/controls/SettingsActionBar;->onShotmodeRadioButtonSelected(Landroid/widget/RadioGroup;)V

    .line 81
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/controls/SettingsActionBar$1;->this$0:Lcom/spritefish/fastburstcamera/controls/SettingsActionBar;

    #getter for: Lcom/spritefish/fastburstcamera/controls/SettingsActionBar;->activity:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/controls/SettingsActionBar;->access$0(Lcom/spritefish/fastburstcamera/controls/SettingsActionBar;)Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->updateShootMode()V

    .line 84
    return-void
.end method
