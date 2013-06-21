.class public Lcom/fleapapa/helper/CallOptions;
.super Landroid/app/Activity;
.source "CallOptions.java"


# instance fields
.field private final WHO:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fleapapa/helper/CallOptions;->WHO:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const v3, 0x7f08004e

    const/4 v2, 0x0

    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/CallOptions;->setContentView(I)V

    .line 28
    const v0, 0x7f080044

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/CallOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/fleapapa/helper/CallOptions$1;

    invoke-direct {v1, p0}, Lcom/fleapapa/helper/CallOptions$1;-><init>(Lcom/fleapapa/helper/CallOptions;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    const v0, 0x7f080042

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/CallOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/fleapapa/helper/CallOptions$2;

    invoke-direct {v1, p0}, Lcom/fleapapa/helper/CallOptions$2;-><init>(Lcom/fleapapa/helper/CallOptions;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    const v0, 0x7f080046

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/CallOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v1, Lcom/fleapapa/helper/CallOptions$3;

    invoke-direct {v1, p0}, Lcom/fleapapa/helper/CallOptions$3;-><init>(Lcom/fleapapa/helper/CallOptions;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 44
    const v0, 0x7f080035

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/CallOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v1, Lcom/fleapapa/helper/CallOptions$4;

    invoke-direct {v1, p0}, Lcom/fleapapa/helper/CallOptions$4;-><init>(Lcom/fleapapa/helper/CallOptions;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 50
    const v0, 0x7f080037

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/CallOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v1, Lcom/fleapapa/helper/CallOptions$5;

    invoke-direct {v1, p0}, Lcom/fleapapa/helper/CallOptions$5;-><init>(Lcom/fleapapa/helper/CallOptions;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 56
    const v0, 0x7f080039

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/CallOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v1, Lcom/fleapapa/helper/CallOptions$6;

    invoke-direct {v1, p0}, Lcom/fleapapa/helper/CallOptions$6;-><init>(Lcom/fleapapa/helper/CallOptions;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 62
    const v0, 0x7f080048

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/CallOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v1, Lcom/fleapapa/helper/CallOptions$7;

    invoke-direct {v1, p0}, Lcom/fleapapa/helper/CallOptions$7;-><init>(Lcom/fleapapa/helper/CallOptions;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 68
    const v0, 0x7f08003b

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/CallOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v1, Lcom/fleapapa/helper/CallOptions$8;

    invoke-direct {v1, p0}, Lcom/fleapapa/helper/CallOptions$8;-><init>(Lcom/fleapapa/helper/CallOptions;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 74
    const v0, 0x7f08003d

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/CallOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v1, Lcom/fleapapa/helper/CallOptions$9;

    invoke-direct {v1, p0}, Lcom/fleapapa/helper/CallOptions$9;-><init>(Lcom/fleapapa/helper/CallOptions;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 86
    const v0, 0x7f08003f

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/CallOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v1, Lcom/fleapapa/helper/CallOptions$10;

    invoke-direct {v1, p0}, Lcom/fleapapa/helper/CallOptions$10;-><init>(Lcom/fleapapa/helper/CallOptions;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 104
    const v0, 0x7f08004a

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/CallOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v1, Lcom/fleapapa/helper/CallOptions$11;

    invoke-direct {v1, p0}, Lcom/fleapapa/helper/CallOptions$11;-><init>(Lcom/fleapapa/helper/CallOptions;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 110
    const v0, 0x7f08004c

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/CallOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v1, Lcom/fleapapa/helper/CallOptions$12;

    invoke-direct {v1, p0}, Lcom/fleapapa/helper/CallOptions$12;-><init>(Lcom/fleapapa/helper/CallOptions;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 116
    invoke-virtual {p0, v3}, Lcom/fleapapa/helper/CallOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    sget-object v1, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget-boolean v1, v1, Lcom/fleapapa/helper/CallPapa;->quietOnStop:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 117
    invoke-virtual {p0, v3}, Lcom/fleapapa/helper/CallOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v1, Lcom/fleapapa/helper/CallOptions$13;

    invoke-direct {v1, p0}, Lcom/fleapapa/helper/CallOptions$13;-><init>(Lcom/fleapapa/helper/CallOptions;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 123
    const v0, 0x7f080032

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/CallOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/fleapapa/util/My;->isEmulator()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 124
    const v0, 0x7f080033

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/CallOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v1, Lcom/fleapapa/helper/CallOptions$14;

    invoke-direct {v1, p0}, Lcom/fleapapa/helper/CallOptions$14;-><init>(Lcom/fleapapa/helper/CallOptions;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 131
    return-void

    .line 116
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 123
    :cond_1
    const/16 v1, 0x8

    goto :goto_1
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 133
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/fleapapa/helper/CallOptions;->WHO:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".onResume"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 136
    sget-object v0, Lcom/fleapapa/helper/CallTabs;->tabact:Landroid/app/TabActivity;

    const v1, 0x7f0600f9

    invoke-virtual {v0, v1}, Landroid/app/TabActivity;->setTitle(I)V

    .line 137
    const v0, 0x7f080041

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/CallOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ","

    invoke-static {v3, v1}, Lcom/fleapapa/helper/Locales;->locales(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    const v0, 0x7f080039

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/CallOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    sget-object v1, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget-boolean v1, v1, Lcom/fleapapa/helper/CallPapa;->saveCall:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 139
    const v0, 0x7f080044

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/CallOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/fleapapa/util/My;->avatar:I

    invoke-static {v1}, Lcom/fleapapa/helper/Avatar;->avatar(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 140
    const v0, 0x7f080046

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/CallOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    sget-boolean v1, Lcom/fleapapa/helper/CallTabs;->hideTabs:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 141
    const v0, 0x7f080048

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/CallOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    sget-object v1, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget-boolean v1, v1, Lcom/fleapapa/helper/CallPapa;->muteBack:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 142
    const v0, 0x7f08003b

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/CallOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    sget-object v1, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget-boolean v1, v1, Lcom/fleapapa/helper/CallPapa;->noUrgency:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 143
    const v0, 0x7f08003d

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/CallOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sget-object v1, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget v1, v1, Lcom/fleapapa/helper/CallPapa;->maxCall:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 144
    const v0, 0x7f08004a

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/CallOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    sget-object v1, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget-boolean v1, v1, Lcom/fleapapa/helper/CallPapa;->quietOnPush:Z

    if-eqz v1, :cond_0

    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 145
    const v0, 0x7f08004c

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/CallOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    sget-object v1, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget-boolean v1, v1, Lcom/fleapapa/helper/CallPapa;->quietOnTime:Z

    if-eqz v1, :cond_1

    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 146
    const v0, 0x7f08003f

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/CallOptions;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/EditText;

    sget-object v0, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget v0, v0, Lcom/fleapapa/helper/CallPapa;->maxIdleMins:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 148
    return-void

    .restart local p0
    :cond_0
    move v1, v4

    .line 144
    goto :goto_0

    :cond_1
    move v1, v4

    .line 145
    goto :goto_1
.end method
