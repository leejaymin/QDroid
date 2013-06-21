.class public Lcom/schezard/rpgdice/simulator;
.super Landroid/app/Activity;
.source "simulator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private NumbersDice:Landroid/widget/TextView;

.field private Results:Landroid/widget/TextView;

.field private Shoot:Landroid/widget/Button;

.field private TypeDice:Landroid/widget/Spinner;

.field private dlDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field private scroll:Landroid/widget/ScrollView;

.field private throwGenerator:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 31
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/schezard/rpgdice/simulator;->throwGenerator:Ljava/util/Random;

    .line 150
    new-instance v0, Lcom/schezard/rpgdice/simulator$1;

    invoke-direct {v0, p0}, Lcom/schezard/rpgdice/simulator$1;-><init>(Lcom/schezard/rpgdice/simulator;)V

    iput-object v0, p0, Lcom/schezard/rpgdice/simulator;->dlDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 25
    return-void
.end method

.method static synthetic access$0(Lcom/schezard/rpgdice/simulator;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/schezard/rpgdice/simulator;->NumbersDice:Landroid/widget/TextView;

    return-object v0
.end method

.method private getControls()V
    .locals 3

    .prologue
    .line 47
    const v0, 0x7f070009

    invoke-virtual {p0, v0}, Lcom/schezard/rpgdice/simulator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/schezard/rpgdice/simulator;->TypeDice:Landroid/widget/Spinner;

    .line 48
    const v0, 0x7f07000c

    invoke-virtual {p0, v0}, Lcom/schezard/rpgdice/simulator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/schezard/rpgdice/simulator;->NumbersDice:Landroid/widget/TextView;

    .line 49
    const v0, 0x7f07000e

    invoke-virtual {p0, v0}, Lcom/schezard/rpgdice/simulator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/schezard/rpgdice/simulator;->Shoot:Landroid/widget/Button;

    .line 50
    iget-object v0, p0, Lcom/schezard/rpgdice/simulator;->Shoot:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    const v0, 0x7f070010

    invoke-virtual {p0, v0}, Lcom/schezard/rpgdice/simulator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/schezard/rpgdice/simulator;->Results:Landroid/widget/TextView;

    .line 52
    const v0, 0x7f07000f

    invoke-virtual {p0, v0}, Lcom/schezard/rpgdice/simulator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/schezard/rpgdice/simulator;->scroll:Landroid/widget/ScrollView;

    .line 53
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/schezard/rpgdice/simulator;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/schezard/rpgdice/simulator;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 54
    iget-object v0, p0, Lcom/schezard/rpgdice/simulator;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/schezard/rpgdice/simulator;->NumbersDice:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 55
    iget-object v0, p0, Lcom/schezard/rpgdice/simulator;->Shoot:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 56
    return-void
.end method

.method private loadTypeDice()V
    .locals 3

    .prologue
    .line 60
    const/high16 v1, 0x7f04

    const v2, 0x1090008

    invoke-static {p0, v1, v2}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 61
    .local v0, adapterSpinner:Landroid/widget/ArrayAdapter;
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 62
    iget-object v1, p0, Lcom/schezard/rpgdice/simulator;->TypeDice:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 63
    return-void
.end method

.method private throwSimulator(II)V
    .locals 12
    .parameter "type"
    .parameter "number"

    .prologue
    const/16 v10, 0xa

    const/4 v11, 0x0

    .line 114
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v6, lResult:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, p1, :cond_0

    .line 121
    const/4 v0, 0x0

    .local v0, eThrow:I
    :goto_1
    if-lt v0, p2, :cond_1

    .line 128
    const-string v7, "<br><br>"

    .line 129
    .local v7, sLine:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, item:I
    :goto_2
    if-lt v5, p1, :cond_2

    .line 146
    iget-object v8, p0, Lcom/schezard/rpgdice/simulator;->Results:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "<b><i>"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v10, 0x7f060007

    invoke-virtual {p0, v10}, Lcom/schezard/rpgdice/simulator;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "</i></b>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v8, p0, Lcom/schezard/rpgdice/simulator;->scroll:Landroid/widget/ScrollView;

    invoke-virtual {v8, v11}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 148
    return-void

    .line 116
    .end local v0           #eThrow:I
    .end local v5           #item:I
    .end local v7           #sLine:Ljava/lang/String;
    :cond_0
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 122
    .restart local v0       #eThrow:I
    :cond_1
    iget-object v8, p0, Lcom/schezard/rpgdice/simulator;->throwGenerator:Ljava/util/Random;

    invoke-virtual {v8, p1}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 123
    .local v3, iResult:I
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 124
    .local v2, iCounter:I
    add-int/lit8 v2, v2, 0x1

    .line 125
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v3, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 131
    .end local v2           #iCounter:I
    .end local v3           #iResult:I
    .restart local v5       #item:I
    .restart local v7       #sLine:Ljava/lang/String;
    :cond_2
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 132
    .local v4, iValue:I
    if-lez v4, :cond_3

    .line 134
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "<font color=\'blue\'>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 135
    if-ne p1, v10, :cond_4

    add-int/lit8 v8, v5, 0x1

    if-ne v8, v10, :cond_4

    .line 137
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "<b>0: </b>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 143
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "</font>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "<br>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 129
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 141
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "<b>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": </b>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_3
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f07000e

    if-ne v3, v4, :cond_0

    .line 69
    iget-object v3, p0, Lcom/schezard/rpgdice/simulator;->NumbersDice:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 70
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 71
    .local v0, adDialog:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f06000d

    invoke-virtual {p0, v3}, Lcom/schezard/rpgdice/simulator;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 72
    const v3, 0x7f06000e

    invoke-virtual {p0, v3}, Lcom/schezard/rpgdice/simulator;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 73
    const v3, 0x7f06000b

    invoke-virtual {p0, v3}, Lcom/schezard/rpgdice/simulator;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/schezard/rpgdice/simulator;->dlDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 74
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 75
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 76
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 108
    .end local v0           #adDialog:Landroid/app/AlertDialog$Builder;
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    iget-object v3, p0, Lcom/schezard/rpgdice/simulator;->NumbersDice:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 80
    iget-object v3, p0, Lcom/schezard/rpgdice/simulator;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, p0, Lcom/schezard/rpgdice/simulator;->NumbersDice:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 82
    :cond_2
    const/4 v2, 0x4

    .line 83
    .local v2, type:I
    const/4 v1, 0x1

    .line 84
    .local v1, number:I
    iget-object v3, p0, Lcom/schezard/rpgdice/simulator;->NumbersDice:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 85
    iget-object v3, p0, Lcom/schezard/rpgdice/simulator;->TypeDice:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 105
    :goto_1
    invoke-direct {p0, v2, v1}, Lcom/schezard/rpgdice/simulator;->throwSimulator(II)V

    goto :goto_0

    .line 87
    :pswitch_0
    const/4 v2, 0x4

    .line 88
    goto :goto_1

    .line 90
    :pswitch_1
    const/4 v2, 0x6

    .line 91
    goto :goto_1

    .line 93
    :pswitch_2
    const/16 v2, 0x8

    .line 94
    goto :goto_1

    .line 96
    :pswitch_3
    const/16 v2, 0xa

    .line 97
    goto :goto_1

    .line 99
    :pswitch_4
    const/16 v2, 0xc

    .line 100
    goto :goto_1

    .line 102
    :pswitch_5
    const/16 v2, 0x14

    goto :goto_1

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 35
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/schezard/rpgdice/simulator;->requestWindowFeature(I)Z

    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/schezard/rpgdice/simulator;->setContentView(I)V

    .line 40
    invoke-direct {p0}, Lcom/schezard/rpgdice/simulator;->getControls()V

    .line 41
    invoke-direct {p0}, Lcom/schezard/rpgdice/simulator;->loadTypeDice()V

    .line 43
    return-void
.end method
