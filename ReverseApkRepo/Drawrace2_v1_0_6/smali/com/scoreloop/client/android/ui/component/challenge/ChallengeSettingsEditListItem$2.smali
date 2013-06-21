.class Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem$2;
.super Ljava/lang/Object;
.source "ChallengeSettingsEditListItem.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem;->prepareStakeSelector(Landroid/view/View;)V
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
    .line 124
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem$2;->this$0:Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 127
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem$2;->this$0:Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem;

    #setter for: Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem;->_stakePosition:I
    invoke-static {v1, p2}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem;->access$102(Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem;I)I

    .line 128
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem$ViewHolder;

    .line 129
    .local v0, holder:Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem$ViewHolder;
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem$2;->this$0:Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem;

    iget-object v2, v0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem$ViewHolder;->stakeText:Landroid/widget/TextView;

    #calls: Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem;->updateStakeText(Landroid/widget/TextView;)V
    invoke-static {v1, v2}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem;->access$200(Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem;Landroid/widget/TextView;)V

    .line 130
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 134
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 138
    return-void
.end method
