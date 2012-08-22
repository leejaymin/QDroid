.class Lcom/jaynux/app/SettingActivity$1;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaynux/app/SettingActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaynux/app/SettingActivity;

.field private final synthetic val$dialog:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/jaynux/app/SettingActivity;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jaynux/app/SettingActivity$1;->this$0:Lcom/jaynux/app/SettingActivity;

    iput-object p2, p0, Lcom/jaynux/app/SettingActivity$1;->val$dialog:Landroid/view/View;

    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 477
    iget-object v5, p0, Lcom/jaynux/app/SettingActivity$1;->val$dialog:Landroid/view/View;

    const v6, 0x7f090013

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 478
    .local v0, first:Ljava/lang/String;
    iget-object v5, p0, Lcom/jaynux/app/SettingActivity$1;->val$dialog:Landroid/view/View;

    const v6, 0x7f090016

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 479
    .local v2, second:Ljava/lang/String;
    iget-object v5, p0, Lcom/jaynux/app/SettingActivity$1;->val$dialog:Landroid/view/View;

    const v6, 0x7f090019

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    .line 480
    .local v4, third:Ljava/lang/String;
    iget-object v5, p0, Lcom/jaynux/app/SettingActivity$1;->val$dialog:Landroid/view/View;

    const v6, 0x7f09001c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 483
    .local v1, fourth:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    iget-object v5, p0, Lcom/jaynux/app/SettingActivity$1;->this$0:Lcom/jaynux/app/SettingActivity;

    const-class v6, Lcom/jaynux/app/main;

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 485
    .local v3, startIntent:Landroid/content/Intent;
    const-string v5, "player1Name"

    iget-object v6, p0, Lcom/jaynux/app/SettingActivity$1;->this$0:Lcom/jaynux/app/SettingActivity;

    #getter for: Lcom/jaynux/app/SettingActivity;->player1Name:Ljava/lang/String;
    invoke-static {v6}, Lcom/jaynux/app/SettingActivity;->access$0(Lcom/jaynux/app/SettingActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 486
    const-string v5, "player2Name"

    iget-object v6, p0, Lcom/jaynux/app/SettingActivity$1;->this$0:Lcom/jaynux/app/SettingActivity;

    #getter for: Lcom/jaynux/app/SettingActivity;->player2Name:Ljava/lang/String;
    invoke-static {v6}, Lcom/jaynux/app/SettingActivity;->access$1(Lcom/jaynux/app/SettingActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 487
    const-string v5, "player3Name"

    iget-object v6, p0, Lcom/jaynux/app/SettingActivity$1;->this$0:Lcom/jaynux/app/SettingActivity;

    #getter for: Lcom/jaynux/app/SettingActivity;->player3Name:Ljava/lang/String;
    invoke-static {v6}, Lcom/jaynux/app/SettingActivity;->access$2(Lcom/jaynux/app/SettingActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 488
    const-string v5, "player4Name"

    iget-object v6, p0, Lcom/jaynux/app/SettingActivity$1;->this$0:Lcom/jaynux/app/SettingActivity;

    #getter for: Lcom/jaynux/app/SettingActivity;->player4Name:Ljava/lang/String;
    invoke-static {v6}, Lcom/jaynux/app/SettingActivity;->access$3(Lcom/jaynux/app/SettingActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 490
    const-string v5, "first"

    invoke-virtual {v3, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 491
    const-string v5, "second"

    invoke-virtual {v3, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 492
    const-string v5, "third"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 493
    const-string v5, "foruth"

    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 495
    const-string v5, "player1_ag"

    iget-object v6, p0, Lcom/jaynux/app/SettingActivity$1;->this$0:Lcom/jaynux/app/SettingActivity;

    #getter for: Lcom/jaynux/app/SettingActivity;->player1_ag:I
    invoke-static {v6}, Lcom/jaynux/app/SettingActivity;->access$4(Lcom/jaynux/app/SettingActivity;)I

    move-result v6

    iget-object v7, p0, Lcom/jaynux/app/SettingActivity$1;->this$0:Lcom/jaynux/app/SettingActivity;

    #getter for: Lcom/jaynux/app/SettingActivity;->player1_hero_option_ag:I
    invoke-static {v7}, Lcom/jaynux/app/SettingActivity;->access$5(Lcom/jaynux/app/SettingActivity;)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 496
    const-string v5, "player2_ag"

    iget-object v6, p0, Lcom/jaynux/app/SettingActivity$1;->this$0:Lcom/jaynux/app/SettingActivity;

    #getter for: Lcom/jaynux/app/SettingActivity;->player2_ag:I
    invoke-static {v6}, Lcom/jaynux/app/SettingActivity;->access$6(Lcom/jaynux/app/SettingActivity;)I

    move-result v6

    iget-object v7, p0, Lcom/jaynux/app/SettingActivity$1;->this$0:Lcom/jaynux/app/SettingActivity;

    #getter for: Lcom/jaynux/app/SettingActivity;->player2_hero_option_ag:I
    invoke-static {v7}, Lcom/jaynux/app/SettingActivity;->access$7(Lcom/jaynux/app/SettingActivity;)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 497
    const-string v5, "player3_ag"

    iget-object v6, p0, Lcom/jaynux/app/SettingActivity$1;->this$0:Lcom/jaynux/app/SettingActivity;

    #getter for: Lcom/jaynux/app/SettingActivity;->player3_ag:I
    invoke-static {v6}, Lcom/jaynux/app/SettingActivity;->access$8(Lcom/jaynux/app/SettingActivity;)I

    move-result v6

    iget-object v7, p0, Lcom/jaynux/app/SettingActivity$1;->this$0:Lcom/jaynux/app/SettingActivity;

    #getter for: Lcom/jaynux/app/SettingActivity;->player3_hero_option_ag:I
    invoke-static {v7}, Lcom/jaynux/app/SettingActivity;->access$9(Lcom/jaynux/app/SettingActivity;)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 498
    const-string v5, "player4_ag"

    iget-object v6, p0, Lcom/jaynux/app/SettingActivity$1;->this$0:Lcom/jaynux/app/SettingActivity;

    #getter for: Lcom/jaynux/app/SettingActivity;->player4_ag:I
    invoke-static {v6}, Lcom/jaynux/app/SettingActivity;->access$10(Lcom/jaynux/app/SettingActivity;)I

    move-result v6

    iget-object v7, p0, Lcom/jaynux/app/SettingActivity$1;->this$0:Lcom/jaynux/app/SettingActivity;

    #getter for: Lcom/jaynux/app/SettingActivity;->player4_hero_option_ag:I
    invoke-static {v7}, Lcom/jaynux/app/SettingActivity;->access$11(Lcom/jaynux/app/SettingActivity;)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 500
    const-string v5, "player1_speed"

    iget-object v6, p0, Lcom/jaynux/app/SettingActivity$1;->this$0:Lcom/jaynux/app/SettingActivity;

    #getter for: Lcom/jaynux/app/SettingActivity;->player1_speed:I
    invoke-static {v6}, Lcom/jaynux/app/SettingActivity;->access$12(Lcom/jaynux/app/SettingActivity;)I

    move-result v6

    iget-object v7, p0, Lcom/jaynux/app/SettingActivity$1;->this$0:Lcom/jaynux/app/SettingActivity;

    #getter for: Lcom/jaynux/app/SettingActivity;->player1_hero_option_speed:I
    invoke-static {v7}, Lcom/jaynux/app/SettingActivity;->access$13(Lcom/jaynux/app/SettingActivity;)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 501
    const-string v5, "player2_speed"

    iget-object v6, p0, Lcom/jaynux/app/SettingActivity$1;->this$0:Lcom/jaynux/app/SettingActivity;

    #getter for: Lcom/jaynux/app/SettingActivity;->player2_speed:I
    invoke-static {v6}, Lcom/jaynux/app/SettingActivity;->access$14(Lcom/jaynux/app/SettingActivity;)I

    move-result v6

    iget-object v7, p0, Lcom/jaynux/app/SettingActivity$1;->this$0:Lcom/jaynux/app/SettingActivity;

    #getter for: Lcom/jaynux/app/SettingActivity;->player2_hero_option_speed:I
    invoke-static {v7}, Lcom/jaynux/app/SettingActivity;->access$15(Lcom/jaynux/app/SettingActivity;)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 502
    const-string v5, "player3_speed"

    iget-object v6, p0, Lcom/jaynux/app/SettingActivity$1;->this$0:Lcom/jaynux/app/SettingActivity;

    #getter for: Lcom/jaynux/app/SettingActivity;->player3_speed:I
    invoke-static {v6}, Lcom/jaynux/app/SettingActivity;->access$16(Lcom/jaynux/app/SettingActivity;)I

    move-result v6

    iget-object v7, p0, Lcom/jaynux/app/SettingActivity$1;->this$0:Lcom/jaynux/app/SettingActivity;

    #getter for: Lcom/jaynux/app/SettingActivity;->player3_hero_option_speed:I
    invoke-static {v7}, Lcom/jaynux/app/SettingActivity;->access$17(Lcom/jaynux/app/SettingActivity;)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 503
    const-string v5, "player4_speed"

    iget-object v6, p0, Lcom/jaynux/app/SettingActivity$1;->this$0:Lcom/jaynux/app/SettingActivity;

    #getter for: Lcom/jaynux/app/SettingActivity;->player4_speed:I
    invoke-static {v6}, Lcom/jaynux/app/SettingActivity;->access$18(Lcom/jaynux/app/SettingActivity;)I

    move-result v6

    iget-object v7, p0, Lcom/jaynux/app/SettingActivity$1;->this$0:Lcom/jaynux/app/SettingActivity;

    #getter for: Lcom/jaynux/app/SettingActivity;->player4_hero_option_speed:I
    invoke-static {v7}, Lcom/jaynux/app/SettingActivity;->access$19(Lcom/jaynux/app/SettingActivity;)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 505
    const-string v5, "player1_booster"

    iget-object v6, p0, Lcom/jaynux/app/SettingActivity$1;->this$0:Lcom/jaynux/app/SettingActivity;

    #getter for: Lcom/jaynux/app/SettingActivity;->player1_booster:I
    invoke-static {v6}, Lcom/jaynux/app/SettingActivity;->access$20(Lcom/jaynux/app/SettingActivity;)I

    move-result v6

    iget-object v7, p0, Lcom/jaynux/app/SettingActivity$1;->this$0:Lcom/jaynux/app/SettingActivity;

    #getter for: Lcom/jaynux/app/SettingActivity;->player1_hero_option_booster:I
    invoke-static {v7}, Lcom/jaynux/app/SettingActivity;->access$21(Lcom/jaynux/app/SettingActivity;)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 506
    const-string v5, "player2_booster"

    iget-object v6, p0, Lcom/jaynux/app/SettingActivity$1;->this$0:Lcom/jaynux/app/SettingActivity;

    #getter for: Lcom/jaynux/app/SettingActivity;->player2_booster:I
    invoke-static {v6}, Lcom/jaynux/app/SettingActivity;->access$22(Lcom/jaynux/app/SettingActivity;)I

    move-result v6

    iget-object v7, p0, Lcom/jaynux/app/SettingActivity$1;->this$0:Lcom/jaynux/app/SettingActivity;

    #getter for: Lcom/jaynux/app/SettingActivity;->player2_hero_option_booster:I
    invoke-static {v7}, Lcom/jaynux/app/SettingActivity;->access$23(Lcom/jaynux/app/SettingActivity;)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 507
    const-string v5, "player3_booster"

    iget-object v6, p0, Lcom/jaynux/app/SettingActivity$1;->this$0:Lcom/jaynux/app/SettingActivity;

    #getter for: Lcom/jaynux/app/SettingActivity;->player3_booster:I
    invoke-static {v6}, Lcom/jaynux/app/SettingActivity;->access$24(Lcom/jaynux/app/SettingActivity;)I

    move-result v6

    iget-object v7, p0, Lcom/jaynux/app/SettingActivity$1;->this$0:Lcom/jaynux/app/SettingActivity;

    #getter for: Lcom/jaynux/app/SettingActivity;->player3_hero_option_booster:I
    invoke-static {v7}, Lcom/jaynux/app/SettingActivity;->access$25(Lcom/jaynux/app/SettingActivity;)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 508
    const-string v5, "player4_booster"

    iget-object v6, p0, Lcom/jaynux/app/SettingActivity$1;->this$0:Lcom/jaynux/app/SettingActivity;

    #getter for: Lcom/jaynux/app/SettingActivity;->player4_booster:I
    invoke-static {v6}, Lcom/jaynux/app/SettingActivity;->access$26(Lcom/jaynux/app/SettingActivity;)I

    move-result v6

    iget-object v7, p0, Lcom/jaynux/app/SettingActivity$1;->this$0:Lcom/jaynux/app/SettingActivity;

    #getter for: Lcom/jaynux/app/SettingActivity;->player4_hero_option_booster:I
    invoke-static {v7}, Lcom/jaynux/app/SettingActivity;->access$27(Lcom/jaynux/app/SettingActivity;)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 510
    const-string v5, "player1_damage"

    iget-object v6, p0, Lcom/jaynux/app/SettingActivity$1;->this$0:Lcom/jaynux/app/SettingActivity;

    #getter for: Lcom/jaynux/app/SettingActivity;->player1_damage:I
    invoke-static {v6}, Lcom/jaynux/app/SettingActivity;->access$28(Lcom/jaynux/app/SettingActivity;)I

    move-result v6

    iget-object v7, p0, Lcom/jaynux/app/SettingActivity$1;->this$0:Lcom/jaynux/app/SettingActivity;

    #getter for: Lcom/jaynux/app/SettingActivity;->player1_hero_option_damage:I
    invoke-static {v7}, Lcom/jaynux/app/SettingActivity;->access$29(Lcom/jaynux/app/SettingActivity;)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 511
    const-string v5, "player2_damage"

    iget-object v6, p0, Lcom/jaynux/app/SettingActivity$1;->this$0:Lcom/jaynux/app/SettingActivity;

    #getter for: Lcom/jaynux/app/SettingActivity;->player2_damage:I
    invoke-static {v6}, Lcom/jaynux/app/SettingActivity;->access$30(Lcom/jaynux/app/SettingActivity;)I

    move-result v6

    iget-object v7, p0, Lcom/jaynux/app/SettingActivity$1;->this$0:Lcom/jaynux/app/SettingActivity;

    #getter for: Lcom/jaynux/app/SettingActivity;->player2_hero_option_damage:I
    invoke-static {v7}, Lcom/jaynux/app/SettingActivity;->access$31(Lcom/jaynux/app/SettingActivity;)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 512
    const-string v5, "player3_damage"

    iget-object v6, p0, Lcom/jaynux/app/SettingActivity$1;->this$0:Lcom/jaynux/app/SettingActivity;

    #getter for: Lcom/jaynux/app/SettingActivity;->player3_damage:I
    invoke-static {v6}, Lcom/jaynux/app/SettingActivity;->access$32(Lcom/jaynux/app/SettingActivity;)I

    move-result v6

    iget-object v7, p0, Lcom/jaynux/app/SettingActivity$1;->this$0:Lcom/jaynux/app/SettingActivity;

    #getter for: Lcom/jaynux/app/SettingActivity;->player3_hero_option_damage:I
    invoke-static {v7}, Lcom/jaynux/app/SettingActivity;->access$33(Lcom/jaynux/app/SettingActivity;)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 513
    const-string v5, "player4_damage"

    iget-object v6, p0, Lcom/jaynux/app/SettingActivity$1;->this$0:Lcom/jaynux/app/SettingActivity;

    #getter for: Lcom/jaynux/app/SettingActivity;->player4_damage:I
    invoke-static {v6}, Lcom/jaynux/app/SettingActivity;->access$34(Lcom/jaynux/app/SettingActivity;)I

    move-result v6

    iget-object v7, p0, Lcom/jaynux/app/SettingActivity$1;->this$0:Lcom/jaynux/app/SettingActivity;

    #getter for: Lcom/jaynux/app/SettingActivity;->player4_hero_option_damage:I
    invoke-static {v7}, Lcom/jaynux/app/SettingActivity;->access$35(Lcom/jaynux/app/SettingActivity;)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 515
    const-string v5, "player1_hero"

    iget-object v6, p0, Lcom/jaynux/app/SettingActivity$1;->this$0:Lcom/jaynux/app/SettingActivity;

    #getter for: Lcom/jaynux/app/SettingActivity;->player1_hero:Ljava/lang/String;
    invoke-static {v6}, Lcom/jaynux/app/SettingActivity;->access$36(Lcom/jaynux/app/SettingActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 516
    const-string v5, "player2_hero"

    iget-object v6, p0, Lcom/jaynux/app/SettingActivity$1;->this$0:Lcom/jaynux/app/SettingActivity;

    #getter for: Lcom/jaynux/app/SettingActivity;->player2_hero:Ljava/lang/String;
    invoke-static {v6}, Lcom/jaynux/app/SettingActivity;->access$37(Lcom/jaynux/app/SettingActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 517
    const-string v5, "player3_hero"

    iget-object v6, p0, Lcom/jaynux/app/SettingActivity$1;->this$0:Lcom/jaynux/app/SettingActivity;

    #getter for: Lcom/jaynux/app/SettingActivity;->player3_hero:Ljava/lang/String;
    invoke-static {v6}, Lcom/jaynux/app/SettingActivity;->access$38(Lcom/jaynux/app/SettingActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 518
    const-string v5, "player4_hero"

    iget-object v6, p0, Lcom/jaynux/app/SettingActivity$1;->this$0:Lcom/jaynux/app/SettingActivity;

    #getter for: Lcom/jaynux/app/SettingActivity;->player4_hero:Ljava/lang/String;
    invoke-static {v6}, Lcom/jaynux/app/SettingActivity;->access$39(Lcom/jaynux/app/SettingActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 520
    const-string v5, "playerNum"

    iget-object v6, p0, Lcom/jaynux/app/SettingActivity$1;->this$0:Lcom/jaynux/app/SettingActivity;

    #getter for: Lcom/jaynux/app/SettingActivity;->playerNum:I
    invoke-static {v6}, Lcom/jaynux/app/SettingActivity;->access$40(Lcom/jaynux/app/SettingActivity;)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 521
    const-string v5, "meter"

    iget-object v6, p0, Lcom/jaynux/app/SettingActivity$1;->this$0:Lcom/jaynux/app/SettingActivity;

    #getter for: Lcom/jaynux/app/SettingActivity;->meter:I
    invoke-static {v6}, Lcom/jaynux/app/SettingActivity;->access$41(Lcom/jaynux/app/SettingActivity;)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 523
    iget-object v5, p0, Lcom/jaynux/app/SettingActivity$1;->this$0:Lcom/jaynux/app/SettingActivity;

    invoke-virtual {v5, v3}, Lcom/jaynux/app/SettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 524
    iget-object v5, p0, Lcom/jaynux/app/SettingActivity$1;->this$0:Lcom/jaynux/app/SettingActivity;

    invoke-virtual {v5}, Lcom/jaynux/app/SettingActivity;->finish()V

    .line 525
    return-void
.end method
