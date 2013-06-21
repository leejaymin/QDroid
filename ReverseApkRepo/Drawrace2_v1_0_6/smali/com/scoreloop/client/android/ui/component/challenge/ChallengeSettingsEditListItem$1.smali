.class Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem$1;
.super Ljava/lang/Object;
.source "ChallengeSettingsEditListItem.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem;->prepareModeSelector(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem$1;->this$0:Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem$1;->this$0:Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem;

    #setter for: Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem;->_modePosition:I
    invoke-static {v0, p3}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem;->access$002(Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem;I)I

    .line 109
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
