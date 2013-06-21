.class public Lcom/wareone/tappmt/General;
.super Landroid/app/Activity;
.source "General.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wareone/tappmt/General$GeneralListAdapter;,
        Lcom/wareone/tappmt/General$SeparatedListAdapter;
    }
.end annotation


# static fields
.field public static final ITEM_CAPTION:Ljava/lang/String; = "caption"

.field public static final ITEM_CHECKED:Ljava/lang/String; = "checked"

.field public static final ITEM_ID:Ljava/lang/String; = "id"

.field public static final ITEM_TITLE:Ljava/lang/String; = "title"

.field public static final SECTION:Ljava/lang/String; = "section"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private m_adapter:Lcom/wareone/tappmt/General$GeneralListAdapter;

.field private m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

.field private m_items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_items1:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_items2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_items3:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_items4:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/wareone/tappmt/General;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wareone/tappmt/General;->TAG:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 812
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wareone/tappmt/General;->m_items:Ljava/util/ArrayList;

    .line 813
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wareone/tappmt/General;->m_items1:Ljava/util/ArrayList;

    .line 814
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wareone/tappmt/General;->m_items2:Ljava/util/ArrayList;

    .line 815
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wareone/tappmt/General;->m_items3:Ljava/util/ArrayList;

    .line 816
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wareone/tappmt/General;->m_items4:Ljava/util/ArrayList;

    .line 45
    return-void
.end method

.method private _doAction(I)V
    .locals 6
    .parameter "position"

    .prologue
    const/4 v5, 0x0

    const-string v4, "checked"

    .line 477
    const-string v2, "TapPMTPrefs"

    invoke-virtual {p0, v2, v5}, Lcom/wareone/tappmt/General;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 479
    .local v1, settings:Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/wareone/tappmt/General;->m_items:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v3, "id"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 481
    .local v0, item_id:I
    sparse-switch v0, :sswitch_data_0

    .line 546
    :goto_0
    return-void

    .line 484
    :sswitch_0
    invoke-direct {p0}, Lcom/wareone/tappmt/General;->_setDefaultCurrency()V

    goto :goto_0

    .line 488
    :sswitch_1
    invoke-direct {p0}, Lcom/wareone/tappmt/General;->_setDigits()V

    goto :goto_0

    .line 491
    :sswitch_2
    const-string v2, "authorized"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 492
    iget-object v2, p0, Lcom/wareone/tappmt/General;->m_items:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v3, "checked"

    invoke-direct {p0}, Lcom/wareone/tappmt/General;->_toggleUseExternal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    iget-object v2, p0, Lcom/wareone/tappmt/General;->m_adapter:Lcom/wareone/tappmt/General$GeneralListAdapter;

    invoke-virtual {v2}, Lcom/wareone/tappmt/General$GeneralListAdapter;->notifyDataSetChanged()V

    .line 494
    const v2, 0x7f0900aa

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 496
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 497
    const v3, 0x7f09007b

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 498
    const v3, 0x7f0900a0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 499
    const v3, 0x7f090053

    .line 500
    new-instance v4, Lcom/wareone/tappmt/General$2;

    invoke-direct {v4, p0}, Lcom/wareone/tappmt/General$2;-><init>(Lcom/wareone/tappmt/General;)V

    .line 499
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 511
    const v3, 0x7f090051

    .line 512
    new-instance v4, Lcom/wareone/tappmt/General$3;

    invoke-direct {v4, p0}, Lcom/wareone/tappmt/General$3;-><init>(Lcom/wareone/tappmt/General;)V

    .line 511
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 519
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 524
    :sswitch_3
    invoke-direct {p0}, Lcom/wareone/tappmt/General;->_setBudgetAlert()V

    goto :goto_0

    .line 527
    :sswitch_4
    iget-object v2, p0, Lcom/wareone/tappmt/General;->m_items:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v3, "checked"

    invoke-direct {p0}, Lcom/wareone/tappmt/General;->_toggleReminder()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    iget-object v2, p0, Lcom/wareone/tappmt/General;->m_adapter:Lcom/wareone/tappmt/General$GeneralListAdapter;

    invoke-virtual {v2}, Lcom/wareone/tappmt/General$GeneralListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 531
    :sswitch_5
    invoke-direct {p0}, Lcom/wareone/tappmt/General;->_setBeforeDays()V

    goto/16 :goto_0

    .line 534
    :sswitch_6
    invoke-direct {p0}, Lcom/wareone/tappmt/General;->_setReminderTime()V

    goto/16 :goto_0

    .line 537
    :sswitch_7
    sget-object v2, Lcom/wareone/tappmt/General;->TAG:Ljava/lang/String;

    const-string v3, "setting_showme_service"

    invoke-static {v2, v3}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    iget-object v2, p0, Lcom/wareone/tappmt/General;->m_items:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v3, "checked"

    invoke-direct {p0}, Lcom/wareone/tappmt/General;->_toggleShowMe()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    iget-object v2, p0, Lcom/wareone/tappmt/General;->m_adapter:Lcom/wareone/tappmt/General$GeneralListAdapter;

    invoke-virtual {v2}, Lcom/wareone/tappmt/General$GeneralListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 542
    :sswitch_8
    invoke-direct {p0}, Lcom/wareone/tappmt/General;->_setShowMeAccount()V

    goto/16 :goto_0

    .line 481
    :sswitch_data_0
    .sparse-switch
        0x7f0900d0 -> :sswitch_0
        0x7f0900d2 -> :sswitch_1
        0x7f0900d5 -> :sswitch_2
        0x7f0900da -> :sswitch_4
        0x7f0900dc -> :sswitch_5
        0x7f0900de -> :sswitch_6
        0x7f0900e1 -> :sswitch_7
        0x7f0900e3 -> :sswitch_8
        0x7f0900e6 -> :sswitch_3
    .end sparse-switch
.end method

.method private _getList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .parameter
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 549
    .local p1, data:Ljava/util/List;,"Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 551
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .end local p0
    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 554
    return-object v1

    .line 552
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 551
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private _setBeforeDays()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 729
    const-string v2, "TapPMTPrefs"

    invoke-virtual {p0, v2, v5}, Lcom/wareone/tappmt/General;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 731
    .local v1, settings:Landroid/content/SharedPreferences;
    const-string v2, "before_days"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 732
    .local v0, old_value:I
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 733
    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "0"

    aput-object v4, v3, v5

    const/4 v4, 0x1

    const-string v5, "1"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "2"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "3"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "4"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "5"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "6"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "7"

    aput-object v5, v3, v4

    new-instance v4, Lcom/wareone/tappmt/General$7;

    invoke-direct {v4, p0, v1}, Lcom/wareone/tappmt/General$7;-><init>(Lcom/wareone/tappmt/General;Landroid/content/SharedPreferences;)V

    invoke-virtual {v2, v3, v0, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 746
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 747
    return-void
.end method

.method private _setBudgetAlert()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 705
    const-string v3, "TapPMTPrefs"

    invoke-virtual {p0, v3, v5}, Lcom/wareone/tappmt/General;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 707
    .local v1, settings:Landroid/content/SharedPreferences;
    const-string v3, "budget_alert"

    const/16 v4, 0x50

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 709
    .local v0, old_value:I
    const/16 v3, 0xb

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "100"

    aput-object v3, v2, v5

    const/4 v3, 0x1

    const-string v4, "95"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "90"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "85"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "80"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "75"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "70"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "65"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "60"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "55"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "50"

    aput-object v4, v2, v3

    .line 710
    .local v2, trigger:[Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 711
    const v4, 0x7f09007d

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 712
    const/16 v4, 0x64

    sub-int/2addr v4, v0

    div-int/lit8 v4, v4, 0x5

    new-instance v5, Lcom/wareone/tappmt/General$6;

    invoke-direct {v5, p0, v1, v2}, Lcom/wareone/tappmt/General$6;-><init>(Lcom/wareone/tappmt/General;Landroid/content/SharedPreferences;[Ljava/lang/String;)V

    invoke-virtual {v3, v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 725
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 726
    return-void
.end method

.method private _setDefaultCurrency()V
    .locals 6

    .prologue
    .line 559
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 561
    .local v2, m_data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/wareone/tappmt/General;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v3}, Lcom/wareone/tappmt/PmtDbAdapter;->getCurrencies()Landroid/database/Cursor;

    move-result-object v0

    .line 562
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 565
    :cond_0
    const-string v3, "currency_name"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    .line 563
    if-nez v3, :cond_0

    .line 569
    :cond_1
    iget-object v3, p0, Lcom/wareone/tappmt/General;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v3}, Lcom/wareone/tappmt/PmtDbAdapter;->getDefaultCurrency()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 571
    .local v1, index:I
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 572
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    new-instance v5, Lcom/wareone/tappmt/General$4;

    invoke-direct {v5, p0, v2}, Lcom/wareone/tappmt/General$4;-><init>(Lcom/wareone/tappmt/General;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v3, v1, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 582
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 584
    return-void
.end method

.method private _setDigits()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 784
    const-string v2, "TapPMTPrefs"

    invoke-virtual {p0, v2, v5}, Lcom/wareone/tappmt/General;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 786
    .local v1, settings:Landroid/content/SharedPreferences;
    const-string v2, "digits"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 787
    .local v0, old_value:I
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 788
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "0"

    aput-object v4, v3, v5

    const/4 v4, 0x1

    const-string v5, "1"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "2"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "3"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "4"

    aput-object v5, v3, v4

    new-instance v4, Lcom/wareone/tappmt/General$9;

    invoke-direct {v4, p0, v1}, Lcom/wareone/tappmt/General$9;-><init>(Lcom/wareone/tappmt/General;Landroid/content/SharedPreferences;)V

    invoke-virtual {v2, v3, v0, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 801
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 802
    return-void
.end method

.method private _setReminderTime()V
    .locals 11

    .prologue
    .line 750
    const-string v0, "TapPMTPrefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/wareone/tappmt/General;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 752
    .local v10, settings:Landroid/content/SharedPreferences;
    const-string v0, "reminder_time"

    const-string v1, "00:00"

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 753
    .local v9, old_time:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v6

    .line 754
    .local v6, d:Ljava/util/Calendar;
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v0, "HH:mm"

    invoke-direct {v7, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 756
    .local v7, df:Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v7, v9}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 762
    :goto_0
    new-instance v0, Landroid/app/TimePickerDialog;

    .line 763
    new-instance v2, Lcom/wareone/tappmt/General$8;

    invoke-direct {v2, p0, v10, v7}, Lcom/wareone/tappmt/General$8;-><init>(Lcom/wareone/tappmt/General;Landroid/content/SharedPreferences;Ljava/text/SimpleDateFormat;)V

    .line 779
    const/16 v1, 0xb

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v1, 0xc

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x1

    move-object v1, p0

    .line 762
    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 780
    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    .line 781
    return-void

    .line 758
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 759
    .local v8, e:Ljava/lang/Exception;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    goto :goto_0
.end method

.method private _setShowMeAccount()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const-string v11, "acc_name"

    const-string v10, "_id"

    .line 588
    const-string v7, "TapPMTPrefs"

    invoke-virtual {p0, v7, v12}, Lcom/wareone/tappmt/General;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 589
    .local v6, settings:Landroid/content/SharedPreferences;
    const-string v7, "show_account"

    const-wide/16 v8, 0x1

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 591
    .local v0, acc_id:J
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 594
    .local v5, m_data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v7, p0, Lcom/wareone/tappmt/General;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v7}, Lcom/wareone/tappmt/PmtDbAdapter;->getAccountRoot()Landroid/database/Cursor;

    move-result-object v2

    .line 595
    .local v2, c:Landroid/database/Cursor;
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 597
    :cond_0
    const-string v7, "acc_type"

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 598
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 599
    .local v3, curMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    const-string v7, "_id"

    const-string v7, "_id"

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    const-string v7, "acc_name"

    const-string v7, "acc_name"

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    .end local v3           #curMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    .line 596
    if-nez v7, :cond_0

    .line 606
    :cond_2
    const-string v7, "_id"

    invoke-direct {p0, v5, v10}, Lcom/wareone/tappmt/General;->_getList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 608
    .local v4, index:I
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 609
    const-string v7, "acc_name"

    invoke-direct {p0, v5, v11}, Lcom/wareone/tappmt/General;->_getList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    new-array v9, v12, [Ljava/lang/String;

    invoke-interface {v7, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/CharSequence;

    new-instance v9, Lcom/wareone/tappmt/General$5;

    invoke-direct {v9, p0, v6, v5}, Lcom/wareone/tappmt/General$5;-><init>(Lcom/wareone/tappmt/General;Landroid/content/SharedPreferences;Ljava/util/ArrayList;)V

    invoke-virtual {v8, v7, v4, v9}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 622
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 624
    return-void
.end method

.method private _toggleReminder()I
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    const-string v8, "reminder_service"

    .line 648
    const-string v5, "TapPMTPrefs"

    invoke-virtual {p0, v5, v7}, Lcom/wareone/tappmt/General;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 649
    .local v4, settings:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 651
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v5, "reminder_service"

    invoke-interface {v4, v8, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 652
    .local v3, old_value:Z
    if-eqz v3, :cond_1

    move v2, v7

    .line 653
    .local v2, new_value:Z
    :goto_0
    const-string v5, "reminder_service"

    invoke-interface {v4, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 654
    const-string v5, "before_days"

    invoke-interface {v0, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 655
    const-string v5, "reminder_time"

    const-string v6, "08:00"

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 657
    :cond_0
    const-string v5, "reminder_service"

    invoke-interface {v0, v8, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 658
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 660
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/wareone/tappmt/ReminderService;

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 661
    .local v1, it:Landroid/content/Intent;
    if-eqz v2, :cond_2

    .line 662
    const/high16 v5, 0x1000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 663
    invoke-virtual {p0, v1}, Lcom/wareone/tappmt/General;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 668
    :goto_1
    if-eqz v2, :cond_3

    move v5, v9

    :goto_2
    return v5

    .end local v1           #it:Landroid/content/Intent;
    .end local v2           #new_value:Z
    :cond_1
    move v2, v9

    .line 652
    goto :goto_0

    .line 665
    .restart local v1       #it:Landroid/content/Intent;
    .restart local v2       #new_value:Z
    :cond_2
    invoke-virtual {p0, v1}, Lcom/wareone/tappmt/General;->stopService(Landroid/content/Intent;)Z

    goto :goto_1

    :cond_3
    move v5, v7

    .line 668
    goto :goto_2
.end method

.method private _toggleShowMe()I
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v7, "show_me"

    .line 692
    const-string v4, "TapPMTPrefs"

    invoke-virtual {p0, v4, v5}, Lcom/wareone/tappmt/General;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 693
    .local v3, settings:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 695
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "show_me"

    invoke-interface {v3, v7, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 696
    .local v2, old_value:Z
    if-eqz v2, :cond_0

    move v1, v5

    .line 698
    .local v1, new_value:Z
    :goto_0
    const-string v4, "show_me"

    invoke-interface {v0, v7, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 699
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 701
    if-eqz v1, :cond_1

    move v4, v6

    :goto_1
    return v4

    .end local v1           #new_value:Z
    :cond_0
    move v1, v6

    .line 696
    goto :goto_0

    .restart local v1       #new_value:Z
    :cond_1
    move v4, v5

    .line 701
    goto :goto_1
.end method

.method private _toggleSync()I
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v8, "sync_service"

    .line 672
    const-string v5, "TapPMTPrefs"

    invoke-virtual {p0, v5, v6}, Lcom/wareone/tappmt/General;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 673
    .local v4, settings:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 675
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v5, "sync_service"

    invoke-interface {v4, v8, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 676
    .local v3, old_value:Z
    if-eqz v3, :cond_0

    move v2, v6

    .line 677
    .local v2, new_value:Z
    :goto_0
    const-string v5, "sync_service"

    invoke-interface {v0, v8, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 678
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 680
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/wareone/tappmt/SyncService;

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 681
    .local v1, it:Landroid/content/Intent;
    if-eqz v2, :cond_1

    .line 682
    const/high16 v5, 0x1000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 683
    invoke-virtual {p0, v1}, Lcom/wareone/tappmt/General;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 688
    :goto_1
    if-eqz v2, :cond_2

    move v5, v7

    :goto_2
    return v5

    .end local v1           #it:Landroid/content/Intent;
    .end local v2           #new_value:Z
    :cond_0
    move v2, v7

    .line 676
    goto :goto_0

    .line 685
    .restart local v1       #it:Landroid/content/Intent;
    .restart local v2       #new_value:Z
    :cond_1
    invoke-virtual {p0, v1}, Lcom/wareone/tappmt/General;->stopService(Landroid/content/Intent;)Z

    goto :goto_1

    :cond_2
    move v5, v6

    .line 688
    goto :goto_2
.end method

.method private _toggleUseExternal()I
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v7, "use_sdcard"

    .line 628
    const-string v4, "TapPMTPrefs"

    invoke-virtual {p0, v4, v5}, Lcom/wareone/tappmt/General;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 629
    .local v3, settings:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 631
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "use_sdcard"

    invoke-interface {v3, v7, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 632
    .local v2, old_value:Z
    iget-object v4, p0, Lcom/wareone/tappmt/General;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v4}, Lcom/wareone/tappmt/PmtDbAdapter;->backupOrignal()V

    .line 633
    if-eqz v2, :cond_0

    .line 634
    iget-object v4, p0, Lcom/wareone/tappmt/General;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v4, v6}, Lcom/wareone/tappmt/PmtDbAdapter;->transfer(I)V

    .line 639
    :goto_0
    if-eqz v2, :cond_1

    move v1, v5

    .line 641
    .local v1, new_value:Z
    :goto_1
    const-string v4, "use_sdcard"

    invoke-interface {v0, v7, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 642
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 644
    if-eqz v1, :cond_2

    move v4, v6

    :goto_2
    return v4

    .line 636
    .end local v1           #new_value:Z
    :cond_0
    iget-object v4, p0, Lcom/wareone/tappmt/General;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v4, v5}, Lcom/wareone/tappmt/PmtDbAdapter;->transfer(I)V

    goto :goto_0

    :cond_1
    move v1, v6

    .line 639
    goto :goto_1

    .restart local v1       #new_value:Z
    :cond_2
    move v4, v5

    .line 644
    goto :goto_2
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/wareone/tappmt/General;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/wareone/tappmt/General;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 476
    invoke-direct {p0, p1}, Lcom/wareone/tappmt/General;->_doAction(I)V

    return-void
.end method

.method static synthetic access$2(Lcom/wareone/tappmt/General;)Lcom/wareone/tappmt/PmtDbAdapter;
    .locals 1
    .parameter

    .prologue
    .line 810
    iget-object v0, p0, Lcom/wareone/tappmt/General;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    return-object v0
.end method

.method static synthetic access$3(Lcom/wareone/tappmt/General;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 548
    invoke-direct {p0, p1, p2}, Lcom/wareone/tappmt/General;->_getList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const-string v10, "id"

    const-string v9, "checked"

    const-string v8, "caption"

    const-string v7, "1"

    const-string v6, ""

    .line 315
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 317
    new-instance v3, Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-direct {v3, p0}, Lcom/wareone/tappmt/PmtDbAdapter;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/wareone/tappmt/General;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    .line 318
    iget-object v3, p0, Lcom/wareone/tappmt/General;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v3}, Lcom/wareone/tappmt/PmtDbAdapter;->open()Lcom/wareone/tappmt/PmtDbAdapter;

    .line 320
    const-string v3, "TapPMTPrefs"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/wareone/tappmt/General;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 322
    .local v2, settings:Landroid/content/SharedPreferences;
    sget-object v3, Lcom/wareone/tappmt/General;->TAG:Ljava/lang/String;

    const-string v4, "---> onCreate"

    invoke-static {v3, v4}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    sget-object v3, Lcom/wareone/tappmt/General;->TAG:Ljava/lang/String;

    const-string v4, "---> create arraylist"

    invoke-static {v3, v4}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v3, p0, Lcom/wareone/tappmt/General;->m_items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 353
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 354
    .local v0, curMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/wareone/tappmt/General;->m_items:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    const-string v3, "section"

    const-string v4, "0"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    const-string v3, "id"

    const v3, 0x7f0900d4

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    const-string v3, "title"

    invoke-virtual {p0}, Lcom/wareone/tappmt/General;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900d4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    const-string v3, "caption"

    const-string v3, ""

    invoke-virtual {v0, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    const-string v3, "checked"

    const-string v3, ""

    invoke-virtual {v0, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #curMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 362
    .restart local v0       #curMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/wareone/tappmt/General;->m_items:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    const-string v3, "section"

    const-string v4, "1"

    invoke-virtual {v0, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    const-string v3, "id"

    const v3, 0x7f0900d5

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    const-string v3, "title"

    invoke-virtual {p0}, Lcom/wareone/tappmt/General;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900d5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    const-string v3, "caption"

    invoke-virtual {p0}, Lcom/wareone/tappmt/General;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900d6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    const-string v3, "checked"

    const-string v3, "use_sdcard"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "1"

    move-object v3, v7

    :goto_0
    invoke-virtual {v0, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #curMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 370
    .restart local v0       #curMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/wareone/tappmt/General;->m_items:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    const-string v3, "section"

    const-string v4, "1"

    invoke-virtual {v0, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    const-string v3, "id"

    const v3, 0x7f0900d7

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    const-string v3, "title"

    invoke-virtual {p0}, Lcom/wareone/tappmt/General;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900d7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    const-string v3, "caption"

    invoke-virtual {p0}, Lcom/wareone/tappmt/General;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900d8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    const-string v3, "checked"

    const-string v3, "sync_service"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "1"

    move-object v3, v7

    :goto_1
    invoke-virtual {v0, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #curMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 378
    .restart local v0       #curMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/wareone/tappmt/General;->m_items:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    const-string v3, "section"

    const-string v4, "0"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    const-string v3, "id"

    const v3, 0x7f0900e5

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    const-string v3, "title"

    invoke-virtual {p0}, Lcom/wareone/tappmt/General;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900e5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    const-string v3, "caption"

    const-string v3, ""

    invoke-virtual {v0, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    const-string v3, "checked"

    const-string v3, ""

    invoke-virtual {v0, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #curMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 386
    .restart local v0       #curMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/wareone/tappmt/General;->m_items:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    const-string v3, "section"

    const-string v4, "1"

    invoke-virtual {v0, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    const-string v3, "id"

    const v3, 0x7f0900e6

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    const-string v3, "title"

    invoke-virtual {p0}, Lcom/wareone/tappmt/General;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900e6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    const-string v3, "caption"

    invoke-virtual {p0}, Lcom/wareone/tappmt/General;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900e7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    const-string v3, "checked"

    const-string v3, ""

    invoke-virtual {v0, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #curMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 394
    .restart local v0       #curMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/wareone/tappmt/General;->m_items:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    const-string v3, "section"

    const-string v4, "0"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    const-string v3, "id"

    const v3, 0x7f0900d9

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    const-string v3, "title"

    invoke-virtual {p0}, Lcom/wareone/tappmt/General;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900d9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    const-string v3, "caption"

    const-string v3, ""

    invoke-virtual {v0, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    const-string v3, "checked"

    const-string v3, ""

    invoke-virtual {v0, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #curMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 402
    .restart local v0       #curMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/wareone/tappmt/General;->m_items:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    const-string v3, "section"

    const-string v4, "1"

    invoke-virtual {v0, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    const-string v3, "id"

    const v3, 0x7f0900da

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    const-string v3, "title"

    invoke-virtual {p0}, Lcom/wareone/tappmt/General;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900da

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    const-string v3, "caption"

    invoke-virtual {p0}, Lcom/wareone/tappmt/General;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900db

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    const-string v3, "checked"

    const-string v3, "reminder_service"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "1"

    move-object v3, v7

    :goto_2
    invoke-virtual {v0, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #curMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 410
    .restart local v0       #curMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/wareone/tappmt/General;->m_items:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    const-string v3, "section"

    const-string v4, "1"

    invoke-virtual {v0, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    const-string v3, "id"

    const v3, 0x7f0900dc

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    const-string v3, "title"

    invoke-virtual {p0}, Lcom/wareone/tappmt/General;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900dc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    const-string v3, "caption"

    invoke-virtual {p0}, Lcom/wareone/tappmt/General;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900dd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    const-string v3, "checked"

    const-string v3, ""

    invoke-virtual {v0, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #curMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 418
    .restart local v0       #curMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/wareone/tappmt/General;->m_items:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    const-string v3, "section"

    const-string v4, "1"

    invoke-virtual {v0, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    const-string v3, "id"

    const v3, 0x7f0900de

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    const-string v3, "title"

    invoke-virtual {p0}, Lcom/wareone/tappmt/General;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900de

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    const-string v3, "caption"

    invoke-virtual {p0}, Lcom/wareone/tappmt/General;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900df

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    const-string v3, "checked"

    const-string v3, ""

    invoke-virtual {v0, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #curMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 426
    .restart local v0       #curMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/wareone/tappmt/General;->m_items:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    const-string v3, "section"

    const-string v4, "0"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    const-string v3, "id"

    const v3, 0x7f0900e0

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    const-string v3, "title"

    invoke-virtual {p0}, Lcom/wareone/tappmt/General;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900e0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    const-string v3, "caption"

    const-string v3, ""

    invoke-virtual {v0, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    const-string v3, "checked"

    const-string v3, ""

    invoke-virtual {v0, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #curMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 434
    .restart local v0       #curMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/wareone/tappmt/General;->m_items:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    const-string v3, "section"

    const-string v4, "1"

    invoke-virtual {v0, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    const-string v3, "id"

    const v3, 0x7f0900e1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    const-string v3, "title"

    invoke-virtual {p0}, Lcom/wareone/tappmt/General;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900e1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    const-string v3, "caption"

    invoke-virtual {p0}, Lcom/wareone/tappmt/General;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900e2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    const-string v3, "checked"

    const-string v3, "show_me"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "1"

    move-object v3, v7

    :goto_3
    invoke-virtual {v0, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #curMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 442
    .restart local v0       #curMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/wareone/tappmt/General;->m_items:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    const-string v3, "section"

    const-string v4, "1"

    invoke-virtual {v0, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    const-string v3, "id"

    const v3, 0x7f0900e3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    const-string v3, "title"

    invoke-virtual {p0}, Lcom/wareone/tappmt/General;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900e3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    const-string v3, "caption"

    invoke-virtual {p0}, Lcom/wareone/tappmt/General;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900e4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    const-string v3, "checked"

    const-string v3, ""

    invoke-virtual {v0, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    const v3, 0x7f030038

    invoke-virtual {p0, v3}, Lcom/wareone/tappmt/General;->setContentView(I)V

    .line 450
    const v3, 0x7f0c00a6

    invoke-virtual {p0, v3}, Lcom/wareone/tappmt/General;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 452
    .local v1, lv_general:Landroid/widget/ListView;
    sget-object v3, Lcom/wareone/tappmt/General;->TAG:Ljava/lang/String;

    const-string v4, "---> assign adapter"

    invoke-static {v3, v4}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    new-instance v3, Lcom/wareone/tappmt/General$GeneralListAdapter;

    iget-object v4, p0, Lcom/wareone/tappmt/General;->m_items:Ljava/util/ArrayList;

    invoke-direct {v3, p0, v4}, Lcom/wareone/tappmt/General$GeneralListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v3, p0, Lcom/wareone/tappmt/General;->m_adapter:Lcom/wareone/tappmt/General$GeneralListAdapter;

    .line 454
    iget-object v3, p0, Lcom/wareone/tappmt/General;->m_adapter:Lcom/wareone/tappmt/General$GeneralListAdapter;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 455
    new-instance v3, Lcom/wareone/tappmt/General$1;

    invoke-direct {v3, p0}, Lcom/wareone/tappmt/General$1;-><init>(Lcom/wareone/tappmt/General;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 467
    return-void

    .line 367
    .end local v1           #lv_general:Landroid/widget/ListView;
    :cond_0
    const-string v3, "0"

    goto/16 :goto_0

    .line 375
    :cond_1
    const-string v3, "0"

    goto/16 :goto_1

    .line 407
    :cond_2
    const-string v3, "0"

    goto/16 :goto_2

    .line 439
    :cond_3
    const-string v3, "0"

    goto/16 :goto_3
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/wareone/tappmt/General;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v0}, Lcom/wareone/tappmt/PmtDbAdapter;->close()V

    .line 473
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 474
    return-void
.end method
