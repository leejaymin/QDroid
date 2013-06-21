.class Lng/vace/android/highwayracing/Start$7;
.super Ljava/lang/Object;
.source "Start.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lng/vace/android/highwayracing/Start;->setupDifficultyRadioGroup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lng/vace/android/highwayracing/Start;


# direct methods
.method constructor <init>(Lng/vace/android/highwayracing/Start;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lng/vace/android/highwayracing/Start$7;->this$0:Lng/vace/android/highwayracing/Start;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .parameter "radioGroup"
    .parameter "i"

    .prologue
    .line 163
    iget-object v0, p0, Lng/vace/android/highwayracing/Start$7;->this$0:Lng/vace/android/highwayracing/Start;

    const v1, 0x7f070009

    invoke-virtual {v0, v1}, Lng/vace/android/highwayracing/Start;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lng/vace/android/highwayracing/Start$7;->this$0:Lng/vace/android/highwayracing/Start;

    iget-object v0, v0, Lng/vace/android/highwayracing/Start;->config:Lng/vace/android/highwayracing/GameSettings;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lng/vace/android/highwayracing/GameSettings;->setDifficulty(I)V

    .line 165
    :cond_0
    iget-object v0, p0, Lng/vace/android/highwayracing/Start$7;->this$0:Lng/vace/android/highwayracing/Start;

    const v1, 0x7f07000a

    invoke-virtual {v0, v1}, Lng/vace/android/highwayracing/Start;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lng/vace/android/highwayracing/Start$7;->this$0:Lng/vace/android/highwayracing/Start;

    iget-object v0, v0, Lng/vace/android/highwayracing/Start;->config:Lng/vace/android/highwayracing/GameSettings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lng/vace/android/highwayracing/GameSettings;->setDifficulty(I)V

    .line 167
    :cond_1
    iget-object v0, p0, Lng/vace/android/highwayracing/Start$7;->this$0:Lng/vace/android/highwayracing/Start;

    const v1, 0x7f07000b

    invoke-virtual {v0, v1}, Lng/vace/android/highwayracing/Start;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 168
    iget-object v0, p0, Lng/vace/android/highwayracing/Start$7;->this$0:Lng/vace/android/highwayracing/Start;

    iget-object v0, v0, Lng/vace/android/highwayracing/Start;->config:Lng/vace/android/highwayracing/GameSettings;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lng/vace/android/highwayracing/GameSettings;->setDifficulty(I)V

    .line 169
    :cond_2
    return-void
.end method
