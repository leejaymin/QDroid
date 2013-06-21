.class public Lorg/tf/ui/PlayableSkillView;
.super Landroid/widget/LinearLayout;
.source "PlayableSkillView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tf/ui/PlayableSkillView$Callback;
    }
.end annotation


# instance fields
.field private m_callback:Lorg/tf/ui/PlayableSkillView$Callback;

.field private m_notPlayed:Landroid/widget/TextView;

.field private m_playButton:Landroid/widget/Button;

.field private m_rating:Landroid/widget/RatingBar;

.field private m_score:Landroid/widget/TextView;

.field private m_skill:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attributes"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method private static getSkillName(I)Ljava/lang/String;
    .locals 1
    .parameter "skill"

    .prologue
    .line 87
    packed-switch p0, :pswitch_data_0

    .line 92
    :pswitch_0
    const-string v0, "<Unknown>"

    :goto_0
    return-object v0

    .line 88
    :pswitch_1
    const-string v0, "Supaeasy"

    goto :goto_0

    .line 89
    :pswitch_2
    const-string v0, "Easy"

    goto :goto_0

    .line 90
    :pswitch_3
    const-string v0, "Medium"

    goto :goto_0

    .line 91
    :pswitch_4
    const-string v0, "Amazing"

    goto :goto_0

    .line 87
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 79
    iget-object v0, p0, Lorg/tf/ui/PlayableSkillView;->m_playButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 80
    iget-object v0, p0, Lorg/tf/ui/PlayableSkillView;->m_callback:Lorg/tf/ui/PlayableSkillView$Callback;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lorg/tf/ui/PlayableSkillView;->m_callback:Lorg/tf/ui/PlayableSkillView$Callback;

    iget v1, p0, Lorg/tf/ui/PlayableSkillView;->m_skill:I

    invoke-interface {v0, v1}, Lorg/tf/ui/PlayableSkillView$Callback;->onPlaySkill(I)V

    .line 84
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 70
    const v0, 0x7f0c0024

    invoke-virtual {p0, v0}, Lorg/tf/ui/PlayableSkillView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/tf/ui/PlayableSkillView;->m_playButton:Landroid/widget/Button;

    .line 71
    iget-object v0, p0, Lorg/tf/ui/PlayableSkillView;->m_playButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v0, 0x7f0c002a

    invoke-virtual {p0, v0}, Lorg/tf/ui/PlayableSkillView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/tf/ui/PlayableSkillView;->m_notPlayed:Landroid/widget/TextView;

    .line 74
    const v0, 0x7f0c0010

    invoke-virtual {p0, v0}, Lorg/tf/ui/PlayableSkillView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/tf/ui/PlayableSkillView;->m_score:Landroid/widget/TextView;

    .line 75
    const v0, 0x7f0c0011

    invoke-virtual {p0, v0}, Lorg/tf/ui/PlayableSkillView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p0, Lorg/tf/ui/PlayableSkillView;->m_rating:Landroid/widget/RatingBar;

    .line 76
    return-void
.end method

.method public setCallback(Lorg/tf/ui/PlayableSkillView$Callback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 63
    iput-object p1, p0, Lorg/tf/ui/PlayableSkillView;->m_callback:Lorg/tf/ui/PlayableSkillView$Callback;

    .line 64
    return-void
.end method

.method public setup(ILorg/tf/song/SongDB$Score;)V
    .locals 4
    .parameter "skill"
    .parameter "score"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 42
    iput p1, p0, Lorg/tf/ui/PlayableSkillView;->m_skill:I

    .line 43
    iget-object v0, p0, Lorg/tf/ui/PlayableSkillView;->m_playButton:Landroid/widget/Button;

    invoke-static {p1}, Lorg/tf/ui/PlayableSkillView;->getSkillName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 44
    if-nez p2, :cond_0

    .line 45
    iget-object v0, p0, Lorg/tf/ui/PlayableSkillView;->m_notPlayed:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 46
    iget-object v0, p0, Lorg/tf/ui/PlayableSkillView;->m_score:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 47
    iget-object v0, p0, Lorg/tf/ui/PlayableSkillView;->m_rating:Landroid/widget/RatingBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setRating(F)V

    .line 54
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lorg/tf/ui/PlayableSkillView;->m_notPlayed:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 50
    iget-object v0, p0, Lorg/tf/ui/PlayableSkillView;->m_score:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 51
    iget-object v0, p0, Lorg/tf/ui/PlayableSkillView;->m_score:Landroid/widget/TextView;

    iget v1, p2, Lorg/tf/song/SongDB$Score;->score:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v0, p0, Lorg/tf/ui/PlayableSkillView;->m_rating:Landroid/widget/RatingBar;

    iget v1, p2, Lorg/tf/song/SongDB$Score;->rating:F

    iget-object v2, p0, Lorg/tf/ui/PlayableSkillView;->m_rating:Landroid/widget/RatingBar;

    invoke-virtual {v2}, Landroid/widget/RatingBar;->getNumStars()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setRating(F)V

    goto :goto_0
.end method
