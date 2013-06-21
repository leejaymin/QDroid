.class public Lcom/jaynux/app/SettingActivity;
.super Landroid/app/Activity;
.source "SettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jaynux/app/SettingActivity$hero_num;
    }
.end annotation


# static fields
.field public static final PLAY1_ACT_MESURE_REQUEST:I = 0x5

.field public static final PLAY2_ACT_MESURE_REQUEST:I = 0x6

.field public static final PLAY3_ACT_MESURE_REQUEST:I = 0x7

.field public static final PLAY4_ACT_MESURE_REQUEST:I = 0x8


# instance fields
.field private DEFAULT_AG:I

.field private DEFAULT_BOOSTER:I

.field private DEFAULT_DAMAGE:I

.field private DEFAULT_SPEED:I

.field P1_row1col1Flag:Z

.field P1_row1col2Flag:Z

.field P1_row1col3Flag:Z

.field P1_row2col1Flag:Z

.field P1_row2col2Flag:Z

.field P1_row2col3Flag:Z

.field P1_row3col1Flag:Z

.field P1_row3col2Flag:Z

.field P1_row3col3Flag:Z

.field P2_row1col1Flag:Z

.field P2_row1col2Flag:Z

.field P2_row1col3Flag:Z

.field P2_row2col1Flag:Z

.field P2_row2col2Flag:Z

.field P2_row2col3Flag:Z

.field P2_row3col1Flag:Z

.field P2_row3col2Flag:Z

.field P2_row3col3Flag:Z

.field P3_row1col1Flag:Z

.field P3_row1col2Flag:Z

.field P3_row1col3Flag:Z

.field P3_row2col1Flag:Z

.field P3_row2col2Flag:Z

.field P3_row2col3Flag:Z

.field P3_row3col1Flag:Z

.field P3_row3col2Flag:Z

.field P3_row3col3Flag:Z

.field P4_row1col1Flag:Z

.field P4_row1col2Flag:Z

.field P4_row1col3Flag:Z

.field P4_row2col1Flag:Z

.field P4_row2col2Flag:Z

.field P4_row2col3Flag:Z

.field P4_row3col1Flag:Z

.field P4_row3col2Flag:Z

.field P4_row3col3Flag:Z

.field private b_player1:Landroid/widget/TextView;

.field private b_player2:Landroid/widget/TextView;

.field private b_player3:Landroid/widget/TextView;

.field private b_player4:Landroid/widget/TextView;

.field private d_player1:Landroid/widget/TextView;

.field private d_player2:Landroid/widget/TextView;

.field private d_player3:Landroid/widget/TextView;

.field private d_player4:Landroid/widget/TextView;

.field private h_player1:Landroid/widget/TextView;

.field private h_player2:Landroid/widget/TextView;

.field private h_player3:Landroid/widget/TextView;

.field private h_player4:Landroid/widget/TextView;

.field private imgHero:[I

.field private intent:Landroid/content/Intent;

.field private mPlay1measureBtn:Landroid/widget/Button;

.field private mPlay2measureBtn:Landroid/widget/Button;

.field private mPlay3measureBtn:Landroid/widget/Button;

.field private mPlay4measureBtn:Landroid/widget/Button;

.field private meter:I

.field private nextBtn:Landroid/widget/Button;

.field private player1Btn:Landroid/widget/Button;

.field private player1Img:Landroid/widget/ImageButton;

.field private player1Name:Ljava/lang/String;

.field private player1_ag:I

.field private player1_booster:I

.field private player1_damage:I

.field private player1_hero:Ljava/lang/String;

.field private player1_hero_option_ag:I

.field private player1_hero_option_booster:I

.field private player1_hero_option_damage:I

.field private player1_hero_option_speed:I

.field private player1_speed:I

.field private player2Btn:Landroid/widget/Button;

.field private player2Img:Landroid/widget/ImageButton;

.field private player2Name:Ljava/lang/String;

.field private player2_ag:I

.field private player2_booster:I

.field private player2_damage:I

.field private player2_hero:Ljava/lang/String;

.field private player2_hero_option_ag:I

.field private player2_hero_option_booster:I

.field private player2_hero_option_damage:I

.field private player2_hero_option_speed:I

.field private player2_speed:I

.field private player3Btn:Landroid/widget/Button;

.field private player3Img:Landroid/widget/ImageButton;

.field private player3Name:Ljava/lang/String;

.field private player3_ag:I

.field private player3_booster:I

.field private player3_damage:I

.field private player3_hero:Ljava/lang/String;

.field private player3_hero_option_ag:I

.field private player3_hero_option_booster:I

.field private player3_hero_option_damage:I

.field private player3_hero_option_speed:I

.field private player3_speed:I

.field private player4Btn:Landroid/widget/Button;

.field private player4Img:Landroid/widget/ImageButton;

.field private player4Name:Ljava/lang/String;

.field private player4_ag:I

.field private player4_booster:I

.field private player4_damage:I

.field private player4_hero:Ljava/lang/String;

.field private player4_hero_option_ag:I

.field private player4_hero_option_booster:I

.field private player4_hero_option_damage:I

.field private player4_hero_option_speed:I

.field private player4_speed:I

.field private playerNum:I

.field private s_player1:Landroid/widget/TextView;

.field private s_player2:Landroid/widget/TextView;

.field private s_player3:Landroid/widget/TextView;

.field private s_player4:Landroid/widget/TextView;

.field private t_player1:Landroid/widget/TextView;

.field private t_player2:Landroid/widget/TextView;

.field private t_player3:Landroid/widget/TextView;

.field private t_player4:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 19
    iput-boolean v1, p0, Lcom/jaynux/app/SettingActivity;->P1_row1col1Flag:Z

    .line 20
    iput-boolean v1, p0, Lcom/jaynux/app/SettingActivity;->P1_row1col2Flag:Z

    .line 21
    iput-boolean v1, p0, Lcom/jaynux/app/SettingActivity;->P1_row1col3Flag:Z

    .line 22
    iput-boolean v1, p0, Lcom/jaynux/app/SettingActivity;->P1_row2col1Flag:Z

    .line 23
    iput-boolean v0, p0, Lcom/jaynux/app/SettingActivity;->P1_row2col2Flag:Z

    .line 24
    iput-boolean v1, p0, Lcom/jaynux/app/SettingActivity;->P1_row2col3Flag:Z

    .line 25
    iput-boolean v1, p0, Lcom/jaynux/app/SettingActivity;->P1_row3col1Flag:Z

    .line 26
    iput-boolean v1, p0, Lcom/jaynux/app/SettingActivity;->P1_row3col2Flag:Z

    .line 27
    iput-boolean v1, p0, Lcom/jaynux/app/SettingActivity;->P1_row3col3Flag:Z

    .line 29
    iput-boolean v1, p0, Lcom/jaynux/app/SettingActivity;->P2_row1col1Flag:Z

    .line 30
    iput-boolean v1, p0, Lcom/jaynux/app/SettingActivity;->P2_row1col2Flag:Z

    .line 31
    iput-boolean v1, p0, Lcom/jaynux/app/SettingActivity;->P2_row1col3Flag:Z

    .line 32
    iput-boolean v1, p0, Lcom/jaynux/app/SettingActivity;->P2_row2col1Flag:Z

    .line 33
    iput-boolean v0, p0, Lcom/jaynux/app/SettingActivity;->P2_row2col2Flag:Z

    .line 34
    iput-boolean v1, p0, Lcom/jaynux/app/SettingActivity;->P2_row2col3Flag:Z

    .line 35
    iput-boolean v1, p0, Lcom/jaynux/app/SettingActivity;->P2_row3col1Flag:Z

    .line 36
    iput-boolean v1, p0, Lcom/jaynux/app/SettingActivity;->P2_row3col2Flag:Z

    .line 37
    iput-boolean v1, p0, Lcom/jaynux/app/SettingActivity;->P2_row3col3Flag:Z

    .line 39
    iput-boolean v1, p0, Lcom/jaynux/app/SettingActivity;->P3_row1col1Flag:Z

    .line 40
    iput-boolean v1, p0, Lcom/jaynux/app/SettingActivity;->P3_row1col2Flag:Z

    .line 41
    iput-boolean v1, p0, Lcom/jaynux/app/SettingActivity;->P3_row1col3Flag:Z

    .line 42
    iput-boolean v1, p0, Lcom/jaynux/app/SettingActivity;->P3_row2col1Flag:Z

    .line 43
    iput-boolean v0, p0, Lcom/jaynux/app/SettingActivity;->P3_row2col2Flag:Z

    .line 44
    iput-boolean v1, p0, Lcom/jaynux/app/SettingActivity;->P3_row2col3Flag:Z

    .line 45
    iput-boolean v1, p0, Lcom/jaynux/app/SettingActivity;->P3_row3col1Flag:Z

    .line 46
    iput-boolean v1, p0, Lcom/jaynux/app/SettingActivity;->P3_row3col2Flag:Z

    .line 47
    iput-boolean v1, p0, Lcom/jaynux/app/SettingActivity;->P3_row3col3Flag:Z

    .line 49
    iput-boolean v1, p0, Lcom/jaynux/app/SettingActivity;->P4_row1col1Flag:Z

    .line 50
    iput-boolean v1, p0, Lcom/jaynux/app/SettingActivity;->P4_row1col2Flag:Z

    .line 51
    iput-boolean v1, p0, Lcom/jaynux/app/SettingActivity;->P4_row1col3Flag:Z

    .line 52
    iput-boolean v1, p0, Lcom/jaynux/app/SettingActivity;->P4_row2col1Flag:Z

    .line 53
    iput-boolean v0, p0, Lcom/jaynux/app/SettingActivity;->P4_row2col2Flag:Z

    .line 54
    iput-boolean v1, p0, Lcom/jaynux/app/SettingActivity;->P4_row2col3Flag:Z

    .line 55
    iput-boolean v1, p0, Lcom/jaynux/app/SettingActivity;->P4_row3col1Flag:Z

    .line 56
    iput-boolean v1, p0, Lcom/jaynux/app/SettingActivity;->P4_row3col2Flag:Z

    .line 57
    iput-boolean v1, p0, Lcom/jaynux/app/SettingActivity;->P4_row3col3Flag:Z

    .line 59
    const/16 v0, 0xa

    iput v0, p0, Lcom/jaynux/app/SettingActivity;->DEFAULT_AG:I

    .line 60
    const/16 v0, 0x14

    iput v0, p0, Lcom/jaynux/app/SettingActivity;->DEFAULT_SPEED:I

    .line 61
    iput v2, p0, Lcom/jaynux/app/SettingActivity;->DEFAULT_BOOSTER:I

    .line 62
    iput v2, p0, Lcom/jaynux/app/SettingActivity;->DEFAULT_DAMAGE:I

    .line 65
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 66
    iput-object v0, p0, Lcom/jaynux/app/SettingActivity;->imgHero:[I

    .line 107
    iput v1, p0, Lcom/jaynux/app/SettingActivity;->player1_hero_option_ag:I

    .line 108
    iput v1, p0, Lcom/jaynux/app/SettingActivity;->player1_hero_option_speed:I

    .line 109
    iput v1, p0, Lcom/jaynux/app/SettingActivity;->player1_hero_option_booster:I

    .line 110
    iput v1, p0, Lcom/jaynux/app/SettingActivity;->player1_hero_option_damage:I

    .line 111
    iget v0, p0, Lcom/jaynux/app/SettingActivity;->DEFAULT_AG:I

    iput v0, p0, Lcom/jaynux/app/SettingActivity;->player1_ag:I

    .line 112
    iget v0, p0, Lcom/jaynux/app/SettingActivity;->DEFAULT_SPEED:I

    iput v0, p0, Lcom/jaynux/app/SettingActivity;->player1_speed:I

    .line 113
    iget v0, p0, Lcom/jaynux/app/SettingActivity;->DEFAULT_BOOSTER:I

    iput v0, p0, Lcom/jaynux/app/SettingActivity;->player1_booster:I

    .line 114
    iget v0, p0, Lcom/jaynux/app/SettingActivity;->DEFAULT_DAMAGE:I

    iput v0, p0, Lcom/jaynux/app/SettingActivity;->player1_damage:I

    .line 115
    const-string v0, "\ud0dc\ud76c"

    iput-object v0, p0, Lcom/jaynux/app/SettingActivity;->player1_hero:Ljava/lang/String;

    .line 117
    iput v1, p0, Lcom/jaynux/app/SettingActivity;->player2_hero_option_ag:I

    .line 118
    iput v1, p0, Lcom/jaynux/app/SettingActivity;->player2_hero_option_speed:I

    .line 119
    iput v1, p0, Lcom/jaynux/app/SettingActivity;->player2_hero_option_booster:I

    .line 120
    iput v1, p0, Lcom/jaynux/app/SettingActivity;->player2_hero_option_damage:I

    .line 121
    iget v0, p0, Lcom/jaynux/app/SettingActivity;->DEFAULT_AG:I

    iput v0, p0, Lcom/jaynux/app/SettingActivity;->player2_ag:I

    .line 122
    iget v0, p0, Lcom/jaynux/app/SettingActivity;->DEFAULT_SPEED:I

    iput v0, p0, Lcom/jaynux/app/SettingActivity;->player2_speed:I

    .line 123
    iget v0, p0, Lcom/jaynux/app/SettingActivity;->DEFAULT_BOOSTER:I

    iput v0, p0, Lcom/jaynux/app/SettingActivity;->player2_booster:I

    .line 124
    iget v0, p0, Lcom/jaynux/app/SettingActivity;->DEFAULT_DAMAGE:I

    iput v0, p0, Lcom/jaynux/app/SettingActivity;->player2_damage:I

    .line 125
    const-string v0, "\ud0dc\ud76c"

    iput-object v0, p0, Lcom/jaynux/app/SettingActivity;->player2_hero:Ljava/lang/String;

    .line 127
    iput v1, p0, Lcom/jaynux/app/SettingActivity;->player3_hero_option_ag:I

    .line 128
    iput v1, p0, Lcom/jaynux/app/SettingActivity;->player3_hero_option_speed:I

    .line 129
    iput v1, p0, Lcom/jaynux/app/SettingActivity;->player3_hero_option_booster:I

    .line 130
    iput v1, p0, Lcom/jaynux/app/SettingActivity;->player3_hero_option_damage:I

    .line 131
    iget v0, p0, Lcom/jaynux/app/SettingActivity;->DEFAULT_AG:I

    iput v0, p0, Lcom/jaynux/app/SettingActivity;->player3_ag:I

    .line 132
    iget v0, p0, Lcom/jaynux/app/SettingActivity;->DEFAULT_SPEED:I

    iput v0, p0, Lcom/jaynux/app/SettingActivity;->player3_speed:I

    .line 133
    iget v0, p0, Lcom/jaynux/app/SettingActivity;->DEFAULT_BOOSTER:I

    iput v0, p0, Lcom/jaynux/app/SettingActivity;->player3_booster:I

    .line 134
    iget v0, p0, Lcom/jaynux/app/SettingActivity;->DEFAULT_DAMAGE:I

    iput v0, p0, Lcom/jaynux/app/SettingActivity;->player3_damage:I

    .line 135
    const-string v0, "\ud0dc\ud76c"

    iput-object v0, p0, Lcom/jaynux/app/SettingActivity;->player3_hero:Ljava/lang/String;

    .line 137
    iput v1, p0, Lcom/jaynux/app/SettingActivity;->player4_hero_option_ag:I

    .line 138
    iput v1, p0, Lcom/jaynux/app/SettingActivity;->player4_hero_option_speed:I

    .line 139
    iput v1, p0, Lcom/jaynux/app/SettingActivity;->player4_hero_option_booster:I

    .line 140
    iput v1, p0, Lcom/jaynux/app/SettingActivity;->player4_hero_option_damage:I

    .line 141
    iget v0, p0, Lcom/jaynux/app/SettingActivity;->DEFAULT_AG:I

    iput v0, p0, Lcom/jaynux/app/SettingActivity;->player4_ag:I

    .line 142
    iget v0, p0, Lcom/jaynux/app/SettingActivity;->DEFAULT_SPEED:I

    iput v0, p0, Lcom/jaynux/app/SettingActivity;->player4_speed:I

    .line 143
    iget v0, p0, Lcom/jaynux/app/SettingActivity;->DEFAULT_BOOSTER:I

    iput v0, p0, Lcom/jaynux/app/SettingActivity;->player4_booster:I

    .line 144
    iget v0, p0, Lcom/jaynux/app/SettingActivity;->DEFAULT_DAMAGE:I

    iput v0, p0, Lcom/jaynux/app/SettingActivity;->player4_damage:I

    .line 145
    const-string v0, "\ud0dc\ud76c"

    iput-object v0, p0, Lcom/jaynux/app/SettingActivity;->player4_hero:Ljava/lang/String;

    .line 147
    const-string v0, "player1"

    iput-object v0, p0, Lcom/jaynux/app/SettingActivity;->player1Name:Ljava/lang/String;

    .line 148
    const-string v0, "player2"

    iput-object v0, p0, Lcom/jaynux/app/SettingActivity;->player2Name:Ljava/lang/String;

    .line 149
    const-string v0, "player3"

    iput-object v0, p0, Lcom/jaynux/app/SettingActivity;->player3Name:Ljava/lang/String;

    .line 150
    const-string v0, "player4"

    iput-object v0, p0, Lcom/jaynux/app/SettingActivity;->player4Name:Ljava/lang/String;

    .line 11
    return-void

    .line 65
    :array_0
    .array-data 0x4
        0x10t 0x0t 0x2t 0x7ft
        0x5et 0x0t 0x2t 0x7ft
        0x31t 0x0t 0x2t 0x7ft
        0x1ct 0x0t 0x2t 0x7ft
        0x45t 0x0t 0x2t 0x7ft
        0x4dt 0x0t 0x2t 0x7ft
        0x68t 0x0t 0x2t 0x7ft
        0x39t 0x0t 0x2t 0x7ft
        0x26t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$0(Lcom/jaynux/app/SettingActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 147
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->player1Name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jaynux/app/SettingActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->player2Name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lcom/jaynux/app/SettingActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 141
    iget v0, p0, Lcom/jaynux/app/SettingActivity;->player4_ag:I

    return v0
.end method

.method static synthetic access$11(Lcom/jaynux/app/SettingActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 137
    iget v0, p0, Lcom/jaynux/app/SettingActivity;->player4_hero_option_ag:I

    return v0
.end method

.method static synthetic access$12(Lcom/jaynux/app/SettingActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 112
    iget v0, p0, Lcom/jaynux/app/SettingActivity;->player1_speed:I

    return v0
.end method

.method static synthetic access$13(Lcom/jaynux/app/SettingActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 108
    iget v0, p0, Lcom/jaynux/app/SettingActivity;->player1_hero_option_speed:I

    return v0
.end method

.method static synthetic access$14(Lcom/jaynux/app/SettingActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 122
    iget v0, p0, Lcom/jaynux/app/SettingActivity;->player2_speed:I

    return v0
.end method

.method static synthetic access$15(Lcom/jaynux/app/SettingActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 118
    iget v0, p0, Lcom/jaynux/app/SettingActivity;->player2_hero_option_speed:I

    return v0
.end method

.method static synthetic access$16(Lcom/jaynux/app/SettingActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 132
    iget v0, p0, Lcom/jaynux/app/SettingActivity;->player3_speed:I

    return v0
.end method

.method static synthetic access$17(Lcom/jaynux/app/SettingActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 128
    iget v0, p0, Lcom/jaynux/app/SettingActivity;->player3_hero_option_speed:I

    return v0
.end method

.method static synthetic access$18(Lcom/jaynux/app/SettingActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 142
    iget v0, p0, Lcom/jaynux/app/SettingActivity;->player4_speed:I

    return v0
.end method

.method static synthetic access$19(Lcom/jaynux/app/SettingActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 138
    iget v0, p0, Lcom/jaynux/app/SettingActivity;->player4_hero_option_speed:I

    return v0
.end method

.method static synthetic access$2(Lcom/jaynux/app/SettingActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->player3Name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$20(Lcom/jaynux/app/SettingActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 113
    iget v0, p0, Lcom/jaynux/app/SettingActivity;->player1_booster:I

    return v0
.end method

.method static synthetic access$21(Lcom/jaynux/app/SettingActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 109
    iget v0, p0, Lcom/jaynux/app/SettingActivity;->player1_hero_option_booster:I

    return v0
.end method

.method static synthetic access$22(Lcom/jaynux/app/SettingActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 123
    iget v0, p0, Lcom/jaynux/app/SettingActivity;->player2_booster:I

    return v0
.end method

.method static synthetic access$23(Lcom/jaynux/app/SettingActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 119
    iget v0, p0, Lcom/jaynux/app/SettingActivity;->player2_hero_option_booster:I

    return v0
.end method

.method static synthetic access$24(Lcom/jaynux/app/SettingActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 133
    iget v0, p0, Lcom/jaynux/app/SettingActivity;->player3_booster:I

    return v0
.end method

.method static synthetic access$25(Lcom/jaynux/app/SettingActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 129
    iget v0, p0, Lcom/jaynux/app/SettingActivity;->player3_hero_option_booster:I

    return v0
.end method

.method static synthetic access$26(Lcom/jaynux/app/SettingActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 143
    iget v0, p0, Lcom/jaynux/app/SettingActivity;->player4_booster:I

    return v0
.end method

.method static synthetic access$27(Lcom/jaynux/app/SettingActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 139
    iget v0, p0, Lcom/jaynux/app/SettingActivity;->player4_hero_option_booster:I

    return v0
.end method

.method static synthetic access$28(Lcom/jaynux/app/SettingActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 114
    iget v0, p0, Lcom/jaynux/app/SettingActivity;->player1_damage:I

    return v0
.end method

.method static synthetic access$29(Lcom/jaynux/app/SettingActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 110
    iget v0, p0, Lcom/jaynux/app/SettingActivity;->player1_hero_option_damage:I

    return v0
.end method

.method static synthetic access$3(Lcom/jaynux/app/SettingActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 150
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->player4Name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$30(Lcom/jaynux/app/SettingActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 124
    iget v0, p0, Lcom/jaynux/app/SettingActivity;->player2_damage:I

    return v0
.end method

.method static synthetic access$31(Lcom/jaynux/app/SettingActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 120
    iget v0, p0, Lcom/jaynux/app/SettingActivity;->player2_hero_option_damage:I

    return v0
.end method

.method static synthetic access$32(Lcom/jaynux/app/SettingActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 134
    iget v0, p0, Lcom/jaynux/app/SettingActivity;->player3_damage:I

    return v0
.end method

.method static synthetic access$33(Lcom/jaynux/app/SettingActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 130
    iget v0, p0, Lcom/jaynux/app/SettingActivity;->player3_hero_option_damage:I

    return v0
.end method

.method static synthetic access$34(Lcom/jaynux/app/SettingActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 144
    iget v0, p0, Lcom/jaynux/app/SettingActivity;->player4_damage:I

    return v0
.end method

.method static synthetic access$35(Lcom/jaynux/app/SettingActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 140
    iget v0, p0, Lcom/jaynux/app/SettingActivity;->player4_hero_option_damage:I

    return v0
.end method

.method static synthetic access$36(Lcom/jaynux/app/SettingActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->player1_hero:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$37(Lcom/jaynux/app/SettingActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->player2_hero:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$38(Lcom/jaynux/app/SettingActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->player3_hero:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$39(Lcom/jaynux/app/SettingActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->player4_hero:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/jaynux/app/SettingActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 111
    iget v0, p0, Lcom/jaynux/app/SettingActivity;->player1_ag:I

    return v0
.end method

.method static synthetic access$40(Lcom/jaynux/app/SettingActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 152
    iget v0, p0, Lcom/jaynux/app/SettingActivity;->playerNum:I

    return v0
.end method

.method static synthetic access$41(Lcom/jaynux/app/SettingActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 153
    iget v0, p0, Lcom/jaynux/app/SettingActivity;->meter:I

    return v0
.end method

.method static synthetic access$5(Lcom/jaynux/app/SettingActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 107
    iget v0, p0, Lcom/jaynux/app/SettingActivity;->player1_hero_option_ag:I

    return v0
.end method

.method static synthetic access$6(Lcom/jaynux/app/SettingActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 121
    iget v0, p0, Lcom/jaynux/app/SettingActivity;->player2_ag:I

    return v0
.end method

.method static synthetic access$7(Lcom/jaynux/app/SettingActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 117
    iget v0, p0, Lcom/jaynux/app/SettingActivity;->player2_hero_option_ag:I

    return v0
.end method

.method static synthetic access$8(Lcom/jaynux/app/SettingActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 131
    iget v0, p0, Lcom/jaynux/app/SettingActivity;->player3_ag:I

    return v0
.end method

.method static synthetic access$9(Lcom/jaynux/app/SettingActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 127
    iget v0, p0, Lcom/jaynux/app/SettingActivity;->player3_hero_option_ag:I

    return v0
.end method


# virtual methods
.method public init()V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "player1"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "player1"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaynux/app/SettingActivity;->player1Name:Ljava/lang/String;

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "player2"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 291
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "player2"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaynux/app/SettingActivity;->player2Name:Ljava/lang/String;

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "player3"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 293
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "player3"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaynux/app/SettingActivity;->player3Name:Ljava/lang/String;

    .line 294
    :cond_2
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "player4"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 295
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "player4"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaynux/app/SettingActivity;->player4Name:Ljava/lang/String;

    .line 297
    :cond_3
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "playerNum"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jaynux/app/SettingActivity;->playerNum:I

    .line 298
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "meter"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jaynux/app/SettingActivity;->meter:I

    .line 300
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->player1Btn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/jaynux/app/SettingActivity;->player1Name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 301
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->player2Btn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/jaynux/app/SettingActivity;->player2Name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->player3Btn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/jaynux/app/SettingActivity;->player3Name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 303
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->player4Btn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/jaynux/app/SettingActivity;->player4Name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 305
    invoke-virtual {p0}, Lcom/jaynux/app/SettingActivity;->setPlayerInfo()V

    .line 306
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, 0x1

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 555
    packed-switch p1, :pswitch_data_0

    .line 649
    :cond_0
    :goto_0
    return-void

    .line 557
    :pswitch_0
    if-ne p2, v0, :cond_0

    .line 558
    const-string v0, "ag"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jaynux/app/SettingActivity;->player1_hero_option_ag:I

    .line 559
    const-string v0, "speed"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jaynux/app/SettingActivity;->player1_hero_option_speed:I

    .line 560
    const-string v0, "booster"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jaynux/app/SettingActivity;->player1_hero_option_booster:I

    .line 561
    const-string v0, "damage"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jaynux/app/SettingActivity;->player1_hero_option_damage:I

    .line 562
    const-string v0, "name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaynux/app/SettingActivity;->player1_hero:Ljava/lang/String;

    .line 563
    invoke-virtual {p0}, Lcom/jaynux/app/SettingActivity;->setPlayerInfo()V

    goto :goto_0

    .line 567
    :pswitch_1
    if-ne p2, v0, :cond_0

    .line 568
    const-string v0, "ag"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jaynux/app/SettingActivity;->player2_hero_option_ag:I

    .line 569
    const-string v0, "speed"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jaynux/app/SettingActivity;->player2_hero_option_speed:I

    .line 570
    const-string v0, "booster"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jaynux/app/SettingActivity;->player2_hero_option_booster:I

    .line 571
    const-string v0, "damage"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jaynux/app/SettingActivity;->player2_hero_option_damage:I

    .line 572
    const-string v0, "name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaynux/app/SettingActivity;->player2_hero:Ljava/lang/String;

    .line 573
    invoke-virtual {p0}, Lcom/jaynux/app/SettingActivity;->setPlayerInfo()V

    goto :goto_0

    .line 577
    :pswitch_2
    if-ne p2, v0, :cond_0

    .line 578
    const-string v0, "ag"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jaynux/app/SettingActivity;->player3_hero_option_ag:I

    .line 579
    const-string v0, "speed"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jaynux/app/SettingActivity;->player3_hero_option_speed:I

    .line 580
    const-string v0, "booster"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jaynux/app/SettingActivity;->player3_hero_option_booster:I

    .line 581
    const-string v0, "damage"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jaynux/app/SettingActivity;->player3_hero_option_damage:I

    .line 582
    const-string v0, "name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaynux/app/SettingActivity;->player3_hero:Ljava/lang/String;

    .line 583
    invoke-virtual {p0}, Lcom/jaynux/app/SettingActivity;->setPlayerInfo()V

    goto/16 :goto_0

    .line 587
    :pswitch_3
    if-ne p2, v0, :cond_0

    .line 588
    const-string v0, "ag"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jaynux/app/SettingActivity;->player4_hero_option_ag:I

    .line 589
    const-string v0, "speed"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jaynux/app/SettingActivity;->player4_hero_option_speed:I

    .line 590
    const-string v0, "booster"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jaynux/app/SettingActivity;->player4_hero_option_booster:I

    .line 591
    const-string v0, "damage"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jaynux/app/SettingActivity;->player4_hero_option_damage:I

    .line 592
    const-string v0, "name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaynux/app/SettingActivity;->player4_hero:Ljava/lang/String;

    .line 593
    invoke-virtual {p0}, Lcom/jaynux/app/SettingActivity;->setPlayerInfo()V

    goto/16 :goto_0

    .line 597
    :pswitch_4
    if-ne p2, v0, :cond_0

    .line 598
    const-string v0, "row1col1"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaynux/app/SettingActivity;->P1_row1col1Flag:Z

    .line 599
    const-string v0, "row1col2"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaynux/app/SettingActivity;->P1_row1col2Flag:Z

    .line 600
    const-string v0, "row1col3"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaynux/app/SettingActivity;->P1_row1col3Flag:Z

    .line 601
    const-string v0, "row2col1"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaynux/app/SettingActivity;->P1_row2col1Flag:Z

    .line 602
    const-string v0, "row2col2"

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaynux/app/SettingActivity;->P1_row2col2Flag:Z

    .line 603
    const-string v0, "row2col3"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaynux/app/SettingActivity;->P1_row2col3Flag:Z

    .line 604
    const-string v0, "row3col1"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaynux/app/SettingActivity;->P1_row3col1Flag:Z

    .line 605
    const-string v0, "row3col2"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaynux/app/SettingActivity;->P1_row3col2Flag:Z

    .line 606
    const-string v0, "row3col3"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaynux/app/SettingActivity;->P1_row3col3Flag:Z

    goto/16 :goto_0

    .line 610
    :pswitch_5
    if-ne p2, v0, :cond_0

    .line 611
    const-string v0, "row1col1"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaynux/app/SettingActivity;->P2_row1col1Flag:Z

    .line 612
    const-string v0, "row1col2"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaynux/app/SettingActivity;->P2_row1col2Flag:Z

    .line 613
    const-string v0, "row1col3"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaynux/app/SettingActivity;->P2_row1col3Flag:Z

    .line 614
    const-string v0, "row2col1"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaynux/app/SettingActivity;->P2_row2col1Flag:Z

    .line 615
    const-string v0, "row2col2"

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaynux/app/SettingActivity;->P2_row2col2Flag:Z

    .line 616
    const-string v0, "row2col3"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaynux/app/SettingActivity;->P2_row2col3Flag:Z

    .line 617
    const-string v0, "row3col1"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaynux/app/SettingActivity;->P2_row3col1Flag:Z

    .line 618
    const-string v0, "row3col2"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaynux/app/SettingActivity;->P2_row3col2Flag:Z

    .line 619
    const-string v0, "row3col3"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaynux/app/SettingActivity;->P2_row3col3Flag:Z

    goto/16 :goto_0

    .line 623
    :pswitch_6
    if-ne p2, v0, :cond_0

    .line 624
    const-string v0, "row1col1"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaynux/app/SettingActivity;->P3_row1col1Flag:Z

    .line 625
    const-string v0, "row1col2"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaynux/app/SettingActivity;->P3_row1col2Flag:Z

    .line 626
    const-string v0, "row1col3"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaynux/app/SettingActivity;->P3_row1col3Flag:Z

    .line 627
    const-string v0, "row2col1"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaynux/app/SettingActivity;->P3_row2col1Flag:Z

    .line 628
    const-string v0, "row2col2"

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaynux/app/SettingActivity;->P3_row2col2Flag:Z

    .line 629
    const-string v0, "row2col3"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaynux/app/SettingActivity;->P3_row2col3Flag:Z

    .line 630
    const-string v0, "row3col1"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaynux/app/SettingActivity;->P3_row3col1Flag:Z

    .line 631
    const-string v0, "row3col2"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaynux/app/SettingActivity;->P3_row3col2Flag:Z

    .line 632
    const-string v0, "row3col3"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaynux/app/SettingActivity;->P3_row3col3Flag:Z

    goto/16 :goto_0

    .line 636
    :pswitch_7
    if-ne p2, v0, :cond_0

    .line 637
    const-string v0, "row1col1"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaynux/app/SettingActivity;->P4_row1col1Flag:Z

    .line 638
    const-string v0, "row1col2"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaynux/app/SettingActivity;->P4_row1col2Flag:Z

    .line 639
    const-string v0, "row1col3"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaynux/app/SettingActivity;->P4_row1col3Flag:Z

    .line 640
    const-string v0, "row2col1"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaynux/app/SettingActivity;->P4_row2col1Flag:Z

    .line 641
    const-string v0, "row2col2"

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaynux/app/SettingActivity;->P4_row2col2Flag:Z

    .line 642
    const-string v0, "row2col3"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaynux/app/SettingActivity;->P4_row2col3Flag:Z

    .line 643
    const-string v0, "row3col1"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaynux/app/SettingActivity;->P4_row3col1Flag:Z

    .line 644
    const-string v0, "row3col2"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaynux/app/SettingActivity;->P4_row3col2Flag:Z

    .line 645
    const-string v0, "row3col3"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaynux/app/SettingActivity;->P4_row3col3Flag:Z

    goto/16 :goto_0

    .line 555
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    const/4 v9, 0x4

    .line 410
    iget-object v6, p0, Lcom/jaynux/app/SettingActivity;->player1Btn:Landroid/widget/Button;

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 411
    new-instance v1, Landroid/content/Intent;

    const-class v6, Lcom/jaynux/app/SelectHero;

    invoke-direct {v1, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 412
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "row1col1"

    iget-boolean v7, p0, Lcom/jaynux/app/SettingActivity;->P1_row1col1Flag:Z

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 413
    const-string v6, "row1col2"

    iget-boolean v7, p0, Lcom/jaynux/app/SettingActivity;->P1_row1col2Flag:Z

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 414
    const-string v6, "row1col3"

    iget-boolean v7, p0, Lcom/jaynux/app/SettingActivity;->P1_row1col3Flag:Z

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 415
    const-string v6, "row2col1"

    iget-boolean v7, p0, Lcom/jaynux/app/SettingActivity;->P1_row2col1Flag:Z

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 416
    const-string v6, "row2col2"

    iget-boolean v7, p0, Lcom/jaynux/app/SettingActivity;->P1_row2col2Flag:Z

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 417
    const-string v6, "row2col3"

    iget-boolean v7, p0, Lcom/jaynux/app/SettingActivity;->P1_row2col3Flag:Z

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 418
    const-string v6, "row3col1"

    iget-boolean v7, p0, Lcom/jaynux/app/SettingActivity;->P1_row3col1Flag:Z

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 419
    const-string v6, "row3col2"

    iget-boolean v7, p0, Lcom/jaynux/app/SettingActivity;->P1_row3col2Flag:Z

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 420
    const-string v6, "row3col3"

    iget-boolean v7, p0, Lcom/jaynux/app/SettingActivity;->P1_row3col3Flag:Z

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 421
    const/4 v6, 0x1

    invoke-virtual {p0, v1, v6}, Lcom/jaynux/app/SettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 550
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 422
    :cond_0
    iget-object v6, p0, Lcom/jaynux/app/SettingActivity;->player2Btn:Landroid/widget/Button;

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 423
    new-instance v1, Landroid/content/Intent;

    const-class v6, Lcom/jaynux/app/SelectHero;

    invoke-direct {v1, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 424
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v6, "row1col1"

    iget-boolean v7, p0, Lcom/jaynux/app/SettingActivity;->P2_row1col1Flag:Z

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 425
    const-string v6, "row1col2"

    iget-boolean v7, p0, Lcom/jaynux/app/SettingActivity;->P2_row1col2Flag:Z

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 426
    const-string v6, "row1col3"

    iget-boolean v7, p0, Lcom/jaynux/app/SettingActivity;->P2_row1col3Flag:Z

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 427
    const-string v6, "row2col1"

    iget-boolean v7, p0, Lcom/jaynux/app/SettingActivity;->P2_row2col1Flag:Z

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 428
    const-string v6, "row2col2"

    iget-boolean v7, p0, Lcom/jaynux/app/SettingActivity;->P2_row2col2Flag:Z

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 429
    const-string v6, "row2col3"

    iget-boolean v7, p0, Lcom/jaynux/app/SettingActivity;->P2_row2col3Flag:Z

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 430
    const-string v6, "row3col1"

    iget-boolean v7, p0, Lcom/jaynux/app/SettingActivity;->P2_row3col1Flag:Z

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 431
    const-string v6, "row3col2"

    iget-boolean v7, p0, Lcom/jaynux/app/SettingActivity;->P2_row3col2Flag:Z

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 432
    const-string v6, "row3col3"

    iget-boolean v7, p0, Lcom/jaynux/app/SettingActivity;->P2_row3col3Flag:Z

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 433
    const/4 v6, 0x2

    invoke-virtual {p0, v1, v6}, Lcom/jaynux/app/SettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 434
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v6, p0, Lcom/jaynux/app/SettingActivity;->player3Btn:Landroid/widget/Button;

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 435
    new-instance v1, Landroid/content/Intent;

    const-class v6, Lcom/jaynux/app/SelectHero;

    invoke-direct {v1, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 436
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v6, "row1col1"

    iget-boolean v7, p0, Lcom/jaynux/app/SettingActivity;->P3_row1col1Flag:Z

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 437
    const-string v6, "row1col2"

    iget-boolean v7, p0, Lcom/jaynux/app/SettingActivity;->P3_row1col2Flag:Z

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 438
    const-string v6, "row1col3"

    iget-boolean v7, p0, Lcom/jaynux/app/SettingActivity;->P3_row1col3Flag:Z

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 439
    const-string v6, "row2col1"

    iget-boolean v7, p0, Lcom/jaynux/app/SettingActivity;->P3_row2col1Flag:Z

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 440
    const-string v6, "row2col2"

    iget-boolean v7, p0, Lcom/jaynux/app/SettingActivity;->P3_row2col2Flag:Z

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 441
    const-string v6, "row2col3"

    iget-boolean v7, p0, Lcom/jaynux/app/SettingActivity;->P3_row2col3Flag:Z

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 442
    const-string v6, "row3col1"

    iget-boolean v7, p0, Lcom/jaynux/app/SettingActivity;->P3_row3col1Flag:Z

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 443
    const-string v6, "row3col2"

    iget-boolean v7, p0, Lcom/jaynux/app/SettingActivity;->P3_row3col2Flag:Z

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 444
    const-string v6, "row3col3"

    iget-boolean v7, p0, Lcom/jaynux/app/SettingActivity;->P3_row3col3Flag:Z

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 445
    const/4 v6, 0x3

    invoke-virtual {p0, v1, v6}, Lcom/jaynux/app/SettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 446
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    iget-object v6, p0, Lcom/jaynux/app/SettingActivity;->player4Btn:Landroid/widget/Button;

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 447
    new-instance v1, Landroid/content/Intent;

    const-class v6, Lcom/jaynux/app/SelectHero;

    invoke-direct {v1, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 448
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v6, "row1col1"

    iget-boolean v7, p0, Lcom/jaynux/app/SettingActivity;->P4_row1col1Flag:Z

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 449
    const-string v6, "row1col2"

    iget-boolean v7, p0, Lcom/jaynux/app/SettingActivity;->P4_row1col2Flag:Z

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 450
    const-string v6, "row1col3"

    iget-boolean v7, p0, Lcom/jaynux/app/SettingActivity;->P4_row1col3Flag:Z

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 451
    const-string v6, "row2col1"

    iget-boolean v7, p0, Lcom/jaynux/app/SettingActivity;->P4_row2col1Flag:Z

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 452
    const-string v6, "row2col2"

    iget-boolean v7, p0, Lcom/jaynux/app/SettingActivity;->P4_row2col2Flag:Z

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 453
    const-string v6, "row2col3"

    iget-boolean v7, p0, Lcom/jaynux/app/SettingActivity;->P4_row2col3Flag:Z

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 454
    const-string v6, "row3col1"

    iget-boolean v7, p0, Lcom/jaynux/app/SettingActivity;->P4_row3col1Flag:Z

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 455
    const-string v6, "row3col2"

    iget-boolean v7, p0, Lcom/jaynux/app/SettingActivity;->P4_row3col2Flag:Z

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 456
    const-string v6, "row3col3"

    iget-boolean v7, p0, Lcom/jaynux/app/SettingActivity;->P4_row3col3Flag:Z

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 457
    invoke-virtual {p0, v1, v9}, Lcom/jaynux/app/SettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 458
    .end local v1           #intent:Landroid/content/Intent;
    :cond_3
    iget-object v6, p0, Lcom/jaynux/app/SettingActivity;->mPlay1measureBtn:Landroid/widget/Button;

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 459
    new-instance v1, Landroid/content/Intent;

    const-class v6, Lcom/jaynux/app/measureActivity;

    invoke-direct {v1, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 460
    .restart local v1       #intent:Landroid/content/Intent;
    const/4 v6, 0x5

    invoke-virtual {p0, v1, v6}, Lcom/jaynux/app/SettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 461
    .end local v1           #intent:Landroid/content/Intent;
    :cond_4
    iget-object v6, p0, Lcom/jaynux/app/SettingActivity;->mPlay2measureBtn:Landroid/widget/Button;

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 462
    new-instance v1, Landroid/content/Intent;

    const-class v6, Lcom/jaynux/app/measureActivity;

    invoke-direct {v1, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 463
    .restart local v1       #intent:Landroid/content/Intent;
    const/4 v6, 0x6

    invoke-virtual {p0, v1, v6}, Lcom/jaynux/app/SettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 464
    .end local v1           #intent:Landroid/content/Intent;
    :cond_5
    iget-object v6, p0, Lcom/jaynux/app/SettingActivity;->mPlay3measureBtn:Landroid/widget/Button;

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 465
    new-instance v1, Landroid/content/Intent;

    const-class v6, Lcom/jaynux/app/measureActivity;

    invoke-direct {v1, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 466
    .restart local v1       #intent:Landroid/content/Intent;
    const/4 v6, 0x7

    invoke-virtual {p0, v1, v6}, Lcom/jaynux/app/SettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 467
    .end local v1           #intent:Landroid/content/Intent;
    :cond_6
    iget-object v6, p0, Lcom/jaynux/app/SettingActivity;->mPlay4measureBtn:Landroid/widget/Button;

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 468
    new-instance v1, Landroid/content/Intent;

    const-class v6, Lcom/jaynux/app/measureActivity;

    invoke-direct {v1, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 469
    .restart local v1       #intent:Landroid/content/Intent;
    const/16 v6, 0x8

    invoke-virtual {p0, v1, v6}, Lcom/jaynux/app/SettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 471
    .end local v1           #intent:Landroid/content/Intent;
    :cond_7
    invoke-virtual {p0}, Lcom/jaynux/app/SettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f030003

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 472
    .local v0, dialog:Landroid/view/View;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v7, "ok"

    new-instance v8, Lcom/jaynux/app/SettingActivity$1;

    invoke-direct {v8, p0, v0}, Lcom/jaynux/app/SettingActivity$1;-><init>(Lcom/jaynux/app/SettingActivity;Landroid/view/View;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 527
    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const-string v7, "Panalty Input"

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 529
    .local v5, panaltyAD:Landroid/app/AlertDialog;
    const v6, 0x7f090014

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 530
    .local v2, panalty2:Landroid/view/ViewGroup;
    const v6, 0x7f090017

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 531
    .local v3, panalty3:Landroid/view/ViewGroup;
    const v6, 0x7f09001a

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 534
    .local v4, panalty4:Landroid/view/ViewGroup;
    iget v6, p0, Lcom/jaynux/app/SettingActivity;->playerNum:I

    packed-switch v6, :pswitch_data_0

    .line 548
    :goto_1
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 536
    :pswitch_0
    invoke-virtual {v4, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 539
    :pswitch_1
    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 540
    invoke-virtual {v4, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 543
    :pswitch_2
    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 544
    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 545
    invoke-virtual {v4, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 534
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x4

    .line 159
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 160
    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Lcom/jaynux/app/SettingActivity;->setContentView(I)V

    .line 161
    invoke-virtual {p0}, Lcom/jaynux/app/SettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/jaynux/app/SettingActivity;->intent:Landroid/content/Intent;

    .line 163
    const v0, 0x7f090052

    invoke-virtual {p0, v0}, Lcom/jaynux/app/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jaynux/app/SettingActivity;->player1Btn:Landroid/widget/Button;

    .line 164
    const v0, 0x7f090053

    invoke-virtual {p0, v0}, Lcom/jaynux/app/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jaynux/app/SettingActivity;->player2Btn:Landroid/widget/Button;

    .line 165
    const v0, 0x7f090054

    invoke-virtual {p0, v0}, Lcom/jaynux/app/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jaynux/app/SettingActivity;->player3Btn:Landroid/widget/Button;

    .line 166
    const v0, 0x7f090055

    invoke-virtual {p0, v0}, Lcom/jaynux/app/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jaynux/app/SettingActivity;->player4Btn:Landroid/widget/Button;

    .line 167
    const v0, 0x7f090072

    invoke-virtual {p0, v0}, Lcom/jaynux/app/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jaynux/app/SettingActivity;->nextBtn:Landroid/widget/Button;

    .line 169
    const v0, 0x7f09006e

    invoke-virtual {p0, v0}, Lcom/jaynux/app/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jaynux/app/SettingActivity;->mPlay1measureBtn:Landroid/widget/Button;

    .line 170
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->mPlay1measureBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    const v0, 0x7f09006f

    invoke-virtual {p0, v0}, Lcom/jaynux/app/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jaynux/app/SettingActivity;->mPlay2measureBtn:Landroid/widget/Button;

    .line 172
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->mPlay2measureBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    const v0, 0x7f090070

    invoke-virtual {p0, v0}, Lcom/jaynux/app/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jaynux/app/SettingActivity;->mPlay3measureBtn:Landroid/widget/Button;

    .line 174
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->mPlay3measureBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    const v0, 0x7f090071

    invoke-virtual {p0, v0}, Lcom/jaynux/app/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jaynux/app/SettingActivity;->mPlay4measureBtn:Landroid/widget/Button;

    .line 176
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->mPlay4measureBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->player1Btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->player2Btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->player3Btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->player4Btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->nextBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    const v0, 0x7f09005a

    invoke-virtual {p0, v0}, Lcom/jaynux/app/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jaynux/app/SettingActivity;->t_player1:Landroid/widget/TextView;

    .line 185
    const v0, 0x7f09005b

    invoke-virtual {p0, v0}, Lcom/jaynux/app/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jaynux/app/SettingActivity;->t_player2:Landroid/widget/TextView;

    .line 186
    const v0, 0x7f09005c

    invoke-virtual {p0, v0}, Lcom/jaynux/app/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jaynux/app/SettingActivity;->t_player3:Landroid/widget/TextView;

    .line 187
    const v0, 0x7f09005d

    invoke-virtual {p0, v0}, Lcom/jaynux/app/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jaynux/app/SettingActivity;->t_player4:Landroid/widget/TextView;

    .line 189
    const v0, 0x7f09005e

    invoke-virtual {p0, v0}, Lcom/jaynux/app/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jaynux/app/SettingActivity;->s_player1:Landroid/widget/TextView;

    .line 190
    const v0, 0x7f09005f

    invoke-virtual {p0, v0}, Lcom/jaynux/app/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jaynux/app/SettingActivity;->s_player2:Landroid/widget/TextView;

    .line 191
    const v0, 0x7f090060

    invoke-virtual {p0, v0}, Lcom/jaynux/app/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jaynux/app/SettingActivity;->s_player3:Landroid/widget/TextView;

    .line 192
    const v0, 0x7f090061

    invoke-virtual {p0, v0}, Lcom/jaynux/app/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jaynux/app/SettingActivity;->s_player4:Landroid/widget/TextView;

    .line 194
    const v0, 0x7f090062

    invoke-virtual {p0, v0}, Lcom/jaynux/app/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jaynux/app/SettingActivity;->b_player1:Landroid/widget/TextView;

    .line 195
    const v0, 0x7f090063

    invoke-virtual {p0, v0}, Lcom/jaynux/app/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jaynux/app/SettingActivity;->b_player2:Landroid/widget/TextView;

    .line 196
    const v0, 0x7f090064

    invoke-virtual {p0, v0}, Lcom/jaynux/app/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jaynux/app/SettingActivity;->b_player3:Landroid/widget/TextView;

    .line 197
    const v0, 0x7f090065

    invoke-virtual {p0, v0}, Lcom/jaynux/app/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jaynux/app/SettingActivity;->b_player4:Landroid/widget/TextView;

    .line 199
    const v0, 0x7f090066

    invoke-virtual {p0, v0}, Lcom/jaynux/app/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jaynux/app/SettingActivity;->d_player1:Landroid/widget/TextView;

    .line 200
    const v0, 0x7f090067

    invoke-virtual {p0, v0}, Lcom/jaynux/app/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jaynux/app/SettingActivity;->d_player2:Landroid/widget/TextView;

    .line 201
    const v0, 0x7f090068

    invoke-virtual {p0, v0}, Lcom/jaynux/app/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jaynux/app/SettingActivity;->d_player3:Landroid/widget/TextView;

    .line 202
    const v0, 0x7f090069

    invoke-virtual {p0, v0}, Lcom/jaynux/app/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jaynux/app/SettingActivity;->d_player4:Landroid/widget/TextView;

    .line 204
    const v0, 0x7f090056

    invoke-virtual {p0, v0}, Lcom/jaynux/app/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jaynux/app/SettingActivity;->h_player1:Landroid/widget/TextView;

    .line 205
    const v0, 0x7f090057

    invoke-virtual {p0, v0}, Lcom/jaynux/app/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jaynux/app/SettingActivity;->h_player2:Landroid/widget/TextView;

    .line 206
    const v0, 0x7f090058

    invoke-virtual {p0, v0}, Lcom/jaynux/app/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jaynux/app/SettingActivity;->h_player3:Landroid/widget/TextView;

    .line 207
    const v0, 0x7f090059

    invoke-virtual {p0, v0}, Lcom/jaynux/app/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jaynux/app/SettingActivity;->h_player4:Landroid/widget/TextView;

    .line 209
    const v0, 0x7f09006a

    invoke-virtual {p0, v0}, Lcom/jaynux/app/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/jaynux/app/SettingActivity;->player1Img:Landroid/widget/ImageButton;

    .line 210
    const v0, 0x7f09006b

    invoke-virtual {p0, v0}, Lcom/jaynux/app/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/jaynux/app/SettingActivity;->player2Img:Landroid/widget/ImageButton;

    .line 211
    const v0, 0x7f09006c

    invoke-virtual {p0, v0}, Lcom/jaynux/app/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/jaynux/app/SettingActivity;->player3Img:Landroid/widget/ImageButton;

    .line 212
    const v0, 0x7f09006d

    invoke-virtual {p0, v0}, Lcom/jaynux/app/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/jaynux/app/SettingActivity;->player4Img:Landroid/widget/ImageButton;

    .line 214
    invoke-virtual {p0}, Lcom/jaynux/app/SettingActivity;->init()V

    .line 216
    iget v0, p0, Lcom/jaynux/app/SettingActivity;->playerNum:I

    packed-switch v0, :pswitch_data_0

    .line 273
    :goto_0
    return-void

    .line 218
    :pswitch_0
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->player2Btn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->player3Btn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->player4Btn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->mPlay2measureBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 222
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->mPlay3measureBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->mPlay4measureBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->t_player2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->t_player3:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->t_player4:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->s_player2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->s_player3:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->s_player4:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->b_player2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->b_player3:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->b_player4:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->d_player2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->d_player3:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->d_player4:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->h_player2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->h_player3:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->h_player4:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->player2Img:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->player3Img:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->player4Img:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 244
    :pswitch_1
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->player3Btn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->player4Btn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->mPlay3measureBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->mPlay4measureBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->t_player3:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->t_player4:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->s_player3:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->s_player4:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->b_player3:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->b_player4:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->d_player3:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->d_player4:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->h_player3:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->h_player4:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->player3Img:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->player4Img:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 262
    :pswitch_2
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->player4Btn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->mPlay4measureBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->t_player4:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->s_player4:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->b_player4:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->d_player4:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 268
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->h_player4:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/jaynux/app/SettingActivity;->player4Img:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 216
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 278
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 279
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jaynux/app/PlayerNumActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 280
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jaynux/app/SettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 281
    invoke-virtual {p0}, Lcom/jaynux/app/SettingActivity;->finish()V

    .line 282
    const/4 v1, 0x1

    .line 284
    .end local v0           #i:Landroid/content/Intent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setPlayerInfo()V
    .locals 7

    .prologue
    .line 314
    iget-object v4, p0, Lcom/jaynux/app/SettingActivity;->h_player1:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Hero : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/jaynux/app/SettingActivity;->player1_hero:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v4, p0, Lcom/jaynux/app/SettingActivity;->h_player2:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Hero : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/jaynux/app/SettingActivity;->player2_hero:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v4, p0, Lcom/jaynux/app/SettingActivity;->h_player3:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Hero : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/jaynux/app/SettingActivity;->player3_hero:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    iget-object v4, p0, Lcom/jaynux/app/SettingActivity;->h_player4:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Hero : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/jaynux/app/SettingActivity;->player4_hero:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget v4, p0, Lcom/jaynux/app/SettingActivity;->player1_hero_option_ag:I

    if-ltz v4, :cond_0

    .line 320
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "+"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/jaynux/app/SettingActivity;->player1_hero_option_ag:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, option_ag:Ljava/lang/String;
    :goto_0
    iget v4, p0, Lcom/jaynux/app/SettingActivity;->player1_hero_option_speed:I

    if-ltz v4, :cond_1

    .line 324
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "+"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/jaynux/app/SettingActivity;->player1_hero_option_speed:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 327
    .local v3, option_speed:Ljava/lang/String;
    :goto_1
    iget v4, p0, Lcom/jaynux/app/SettingActivity;->player1_hero_option_booster:I

    if-ltz v4, :cond_2

    .line 328
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "+"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/jaynux/app/SettingActivity;->player1_hero_option_booster:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 331
    .local v1, option_booster:Ljava/lang/String;
    :goto_2
    iget v4, p0, Lcom/jaynux/app/SettingActivity;->player1_hero_option_damage:I

    if-ltz v4, :cond_3

    .line 332
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "+"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/jaynux/app/SettingActivity;->player1_hero_option_damage:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 335
    .local v2, option_damage:Ljava/lang/String;
    :goto_3
    iget-object v4, p0, Lcom/jaynux/app/SettingActivity;->t_player1:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Tick : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/jaynux/app/SettingActivity;->player1_ag:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    iget-object v4, p0, Lcom/jaynux/app/SettingActivity;->s_player1:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Speed : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/jaynux/app/SettingActivity;->player1_speed:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    iget-object v4, p0, Lcom/jaynux/app/SettingActivity;->b_player1:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Booster : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/jaynux/app/SettingActivity;->player1_booster:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    iget-object v4, p0, Lcom/jaynux/app/SettingActivity;->d_player1:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Damage : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/jaynux/app/SettingActivity;->player1_damage:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    iget v4, p0, Lcom/jaynux/app/SettingActivity;->player2_hero_option_ag:I

    if-ltz v4, :cond_4

    .line 341
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "+"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/jaynux/app/SettingActivity;->player2_hero_option_ag:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 344
    :goto_4
    iget v4, p0, Lcom/jaynux/app/SettingActivity;->player2_hero_option_speed:I

    if-ltz v4, :cond_5

    .line 345
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "+"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/jaynux/app/SettingActivity;->player2_hero_option_speed:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 348
    :goto_5
    iget v4, p0, Lcom/jaynux/app/SettingActivity;->player2_hero_option_booster:I

    if-ltz v4, :cond_6

    .line 349
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "+"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/jaynux/app/SettingActivity;->player2_hero_option_booster:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 352
    :goto_6
    iget v4, p0, Lcom/jaynux/app/SettingActivity;->player2_hero_option_damage:I

    if-ltz v4, :cond_7

    .line 353
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "+"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/jaynux/app/SettingActivity;->player2_hero_option_damage:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 356
    :goto_7
    iget-object v4, p0, Lcom/jaynux/app/SettingActivity;->t_player2:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Tick : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/jaynux/app/SettingActivity;->player2_ag:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    iget-object v4, p0, Lcom/jaynux/app/SettingActivity;->s_player2:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Speed : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/jaynux/app/SettingActivity;->player2_speed:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    iget-object v4, p0, Lcom/jaynux/app/SettingActivity;->b_player2:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Booster : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/jaynux/app/SettingActivity;->player2_booster:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    iget-object v4, p0, Lcom/jaynux/app/SettingActivity;->d_player2:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Damage : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/jaynux/app/SettingActivity;->player2_damage:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    iget v4, p0, Lcom/jaynux/app/SettingActivity;->player3_hero_option_ag:I

    if-ltz v4, :cond_8

    .line 362
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "+"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/jaynux/app/SettingActivity;->player3_hero_option_ag:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 365
    :goto_8
    iget v4, p0, Lcom/jaynux/app/SettingActivity;->player3_hero_option_speed:I

    if-ltz v4, :cond_9

    .line 366
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "+"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/jaynux/app/SettingActivity;->player3_hero_option_speed:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 369
    :goto_9
    iget v4, p0, Lcom/jaynux/app/SettingActivity;->player3_hero_option_booster:I

    if-ltz v4, :cond_a

    .line 370
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "+"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/jaynux/app/SettingActivity;->player3_hero_option_booster:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 373
    :goto_a
    iget v4, p0, Lcom/jaynux/app/SettingActivity;->player3_hero_option_damage:I

    if-ltz v4, :cond_b

    .line 374
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "+"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/jaynux/app/SettingActivity;->player3_hero_option_damage:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 377
    :goto_b
    iget-object v4, p0, Lcom/jaynux/app/SettingActivity;->t_player3:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Tick : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/jaynux/app/SettingActivity;->player3_ag:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    iget-object v4, p0, Lcom/jaynux/app/SettingActivity;->s_player3:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Speed : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/jaynux/app/SettingActivity;->player3_speed:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    iget-object v4, p0, Lcom/jaynux/app/SettingActivity;->b_player3:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Booster : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/jaynux/app/SettingActivity;->player3_booster:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    iget-object v4, p0, Lcom/jaynux/app/SettingActivity;->d_player3:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Damage : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/jaynux/app/SettingActivity;->player3_damage:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    iget v4, p0, Lcom/jaynux/app/SettingActivity;->player4_hero_option_ag:I

    if-ltz v4, :cond_c

    .line 383
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "+"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/jaynux/app/SettingActivity;->player4_hero_option_ag:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 386
    :goto_c
    iget v4, p0, Lcom/jaynux/app/SettingActivity;->player4_hero_option_speed:I

    if-ltz v4, :cond_d

    .line 387
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "+"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/jaynux/app/SettingActivity;->player4_hero_option_speed:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 390
    :goto_d
    iget v4, p0, Lcom/jaynux/app/SettingActivity;->player4_hero_option_booster:I

    if-ltz v4, :cond_e

    .line 391
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "+"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/jaynux/app/SettingActivity;->player4_hero_option_booster:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 394
    :goto_e
    iget v4, p0, Lcom/jaynux/app/SettingActivity;->player4_hero_option_damage:I

    if-ltz v4, :cond_f

    .line 395
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "+"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/jaynux/app/SettingActivity;->player4_hero_option_damage:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 398
    :goto_f
    iget-object v4, p0, Lcom/jaynux/app/SettingActivity;->t_player4:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Tick : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/jaynux/app/SettingActivity;->player4_ag:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    iget-object v4, p0, Lcom/jaynux/app/SettingActivity;->s_player4:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Speed : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/jaynux/app/SettingActivity;->player4_speed:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    iget-object v4, p0, Lcom/jaynux/app/SettingActivity;->b_player4:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Booster : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/jaynux/app/SettingActivity;->player4_booster:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    iget-object v4, p0, Lcom/jaynux/app/SettingActivity;->d_player4:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Damage : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/jaynux/app/SettingActivity;->player4_damage:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    iget-object v4, p0, Lcom/jaynux/app/SettingActivity;->player1Img:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/jaynux/app/SettingActivity;->imgHero:[I

    iget-object v6, p0, Lcom/jaynux/app/SettingActivity;->player1_hero:Ljava/lang/String;

    invoke-static {v6}, Lcom/jaynux/app/SettingActivity$hero_num;->valueOf(Ljava/lang/String;)Lcom/jaynux/app/SettingActivity$hero_num;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jaynux/app/SettingActivity$hero_num;->ordinal()I

    move-result v6

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 404
    iget-object v4, p0, Lcom/jaynux/app/SettingActivity;->player2Img:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/jaynux/app/SettingActivity;->imgHero:[I

    iget-object v6, p0, Lcom/jaynux/app/SettingActivity;->player2_hero:Ljava/lang/String;

    invoke-static {v6}, Lcom/jaynux/app/SettingActivity$hero_num;->valueOf(Ljava/lang/String;)Lcom/jaynux/app/SettingActivity$hero_num;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jaynux/app/SettingActivity$hero_num;->ordinal()I

    move-result v6

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 405
    iget-object v4, p0, Lcom/jaynux/app/SettingActivity;->player3Img:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/jaynux/app/SettingActivity;->imgHero:[I

    iget-object v6, p0, Lcom/jaynux/app/SettingActivity;->player3_hero:Ljava/lang/String;

    invoke-static {v6}, Lcom/jaynux/app/SettingActivity$hero_num;->valueOf(Ljava/lang/String;)Lcom/jaynux/app/SettingActivity$hero_num;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jaynux/app/SettingActivity$hero_num;->ordinal()I

    move-result v6

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 406
    iget-object v4, p0, Lcom/jaynux/app/SettingActivity;->player4Img:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/jaynux/app/SettingActivity;->imgHero:[I

    iget-object v6, p0, Lcom/jaynux/app/SettingActivity;->player4_hero:Ljava/lang/String;

    invoke-static {v6}, Lcom/jaynux/app/SettingActivity$hero_num;->valueOf(Ljava/lang/String;)Lcom/jaynux/app/SettingActivity$hero_num;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jaynux/app/SettingActivity$hero_num;->ordinal()I

    move-result v6

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 407
    return-void

    .line 322
    .end local v0           #option_ag:Ljava/lang/String;
    .end local v1           #option_booster:Ljava/lang/String;
    .end local v2           #option_damage:Ljava/lang/String;
    .end local v3           #option_speed:Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/jaynux/app/SettingActivity;->player1_hero_option_ag:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #option_ag:Ljava/lang/String;
    goto/16 :goto_0

    .line 326
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/jaynux/app/SettingActivity;->player1_hero_option_speed:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #option_speed:Ljava/lang/String;
    goto/16 :goto_1

    .line 330
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/jaynux/app/SettingActivity;->player1_hero_option_booster:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #option_booster:Ljava/lang/String;
    goto/16 :goto_2

    .line 334
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/jaynux/app/SettingActivity;->player1_hero_option_damage:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #option_damage:Ljava/lang/String;
    goto/16 :goto_3

    .line 343
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/jaynux/app/SettingActivity;->player2_hero_option_ag:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 347
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/jaynux/app/SettingActivity;->player2_hero_option_speed:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_5

    .line 351
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/jaynux/app/SettingActivity;->player2_hero_option_booster:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_6

    .line 355
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/jaynux/app/SettingActivity;->player2_hero_option_damage:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_7

    .line 364
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/jaynux/app/SettingActivity;->player3_hero_option_ag:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    .line 368
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/jaynux/app/SettingActivity;->player3_hero_option_speed:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_9

    .line 372
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/jaynux/app/SettingActivity;->player3_hero_option_booster:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_a

    .line 376
    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/jaynux/app/SettingActivity;->player3_hero_option_damage:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_b

    .line 385
    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/jaynux/app/SettingActivity;->player4_hero_option_ag:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 389
    :cond_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/jaynux/app/SettingActivity;->player4_hero_option_speed:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_d

    .line 393
    :cond_e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/jaynux/app/SettingActivity;->player4_hero_option_booster:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_e

    .line 397
    :cond_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/jaynux/app/SettingActivity;->player4_hero_option_damage:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_f
.end method
