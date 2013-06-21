.class public Lname/kunes/android/launcher/activity/MessageWriteActivity;
.super Lname/kunes/android/activity/DefaultActivity;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lname/kunes/android/activity/DefaultActivity;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/MessageWriteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1, v0}, Lname/kunes/android/c/c;->b(Ljava/lang/String;Landroid/content/ContentResolver;)Lname/kunes/android/e/a;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Lname/kunes/android/e/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lname/kunes/android/launcher/activity/MessageWriteActivity;->a:Ljava/lang/String;

    iget-object v0, p0, Lname/kunes/android/launcher/activity/MessageWriteActivity;->a:Ljava/lang/String;

    invoke-static {p0, v0, p1}, Lname/kunes/android/c/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lname/kunes/android/launcher/activity/MessageWriteActivity;->b:Ljava/lang/String;

    iget-object v0, p0, Lname/kunes/android/launcher/activity/MessageWriteActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lname/kunes/android/launcher/activity/MessageWriteActivity;->l()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lname/kunes/android/launcher/activity/MessageWriteActivity;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Lname/kunes/android/launcher/activity/MessageWriteActivity;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v0

    aget v1, v0, v5

    aget v2, v0, v7

    const v0, 0x7f060111

    invoke-virtual {p0, v0}, Lname/kunes/android/launcher/activity/MessageWriteActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-le v1, v6, :cond_0

    const v0, 0x7f060113

    invoke-virtual {p0, v0}, Lname/kunes/android/launcher/activity/MessageWriteActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/16 v3, 0x14

    if-gt v2, v3, :cond_1

    const v0, 0x7f060112

    invoke-virtual {p0, v0}, Lname/kunes/android/launcher/activity/MessageWriteActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-direct {p0}, Lname/kunes/android/launcher/activity/MessageWriteActivity;->n()Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic b(Lname/kunes/android/launcher/activity/MessageWriteActivity;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lname/kunes/android/launcher/activity/MessageWriteActivity;->l()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lname/kunes/android/launcher/activity/MessageWriteActivity;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lname/kunes/android/launcher/activity/MessageWriteActivity;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lname/kunes/android/launcher/activity/MessageWriteActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lname/kunes/android/launcher/activity/MessageWriteActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 6

    const/16 v5, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lname/kunes/android/launcher/activity/MessageWriteActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lname/kunes/android/launcher/activity/MessageWriteActivity;->b:Ljava/lang/String;

    :goto_0
    invoke-direct {p0}, Lname/kunes/android/launcher/activity/MessageWriteActivity;->e()V

    iget-object v0, p0, Lname/kunes/android/launcher/activity/MessageWriteActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    iget-object v3, p0, Lname/kunes/android/launcher/activity/MessageWriteActivity;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v1

    :goto_2
    if-eqz v0, :cond_4

    invoke-direct {p0}, Lname/kunes/android/launcher/activity/MessageWriteActivity;->k()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    invoke-direct {p0}, Lname/kunes/android/launcher/activity/MessageWriteActivity;->l()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v3, :cond_0

    new-instance v0, Lname/kunes/android/e/a;

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/MessageWriteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lname/kunes/android/launcher/activity/MessageWriteActivity;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lname/kunes/android/c/c;->g(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lname/kunes/android/e/a;-><init>(Landroid/database/Cursor;Z)V

    const-string v1, "data1"

    invoke-virtual {v0, v1}, Lname/kunes/android/e/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lname/kunes/android/launcher/activity/MessageWriteActivity;->l()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_3
    return-void

    :cond_1
    new-instance v0, Lname/kunes/android/b/a/e;

    iget-object v3, p0, Lname/kunes/android/launcher/activity/MessageWriteActivity;->a:Ljava/lang/String;

    invoke-direct {v0, p0, v3}, Lname/kunes/android/b/a/e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0}, Lname/kunes/android/launcher/activity/MessageWriteActivity;->j()Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v0}, Lname/kunes/android/b/a/e;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lname/kunes/android/b/a/e;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lname/kunes/android/b/i;->a(Landroid/view/View;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v3, v2

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lname/kunes/android/launcher/activity/MessageWriteActivity;->k()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    invoke-direct {p0}, Lname/kunes/android/launcher/activity/MessageWriteActivity;->l()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method static synthetic e(Lname/kunes/android/launcher/activity/MessageWriteActivity;)Landroid/widget/Button;
    .locals 1

    invoke-direct {p0}, Lname/kunes/android/launcher/activity/MessageWriteActivity;->j()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method private e()V
    .locals 4

    iget-object v0, p0, Lname/kunes/android/launcher/activity/MessageWriteActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lname/kunes/android/launcher/activity/MessageWriteActivity;->k()Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/MessageWriteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lname/kunes/android/launcher/activity/MessageWriteActivity;->b:Ljava/lang/String;

    invoke-static {v0, v2}, Lname/kunes/android/c/c;->g(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    new-instance v0, Lname/kunes/android/launcher/activity/b/h;

    const/4 v3, 0x1

    invoke-direct {v0, p0, v2, v3}, Lname/kunes/android/launcher/activity/b/h;-><init>(Landroid/app/Activity;Landroid/database/Cursor;Z)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lname/kunes/android/launcher/activity/b/h;->a(Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private h()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lname/kunes/android/launcher/activity/MessageWriteActivity;->m()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private i()V
    .locals 2

    invoke-direct {p0}, Lname/kunes/android/launcher/activity/MessageWriteActivity;->k()Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lname/kunes/android/launcher/activity/bx;

    invoke-direct {v1, p0}, Lname/kunes/android/launcher/activity/bx;-><init>(Lname/kunes/android/launcher/activity/MessageWriteActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private j()Landroid/widget/Button;
    .locals 1

    const v0, 0x7f09002e

    invoke-virtual {p0, v0}, Lname/kunes/android/launcher/activity/MessageWriteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method private k()Landroid/widget/Button;
    .locals 1

    const v0, 0x7f09002f

    invoke-virtual {p0, v0}, Lname/kunes/android/launcher/activity/MessageWriteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method private l()Landroid/widget/TextView;
    .locals 1

    const v0, 0x7f090030

    invoke-virtual {p0, v0}, Lname/kunes/android/launcher/activity/MessageWriteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private m()Landroid/widget/EditText;
    .locals 1

    const v0, 0x7f090031

    invoke-virtual {p0, v0}, Lname/kunes/android/launcher/activity/MessageWriteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    return-object v0
.end method

.method private n()Landroid/widget/Button;
    .locals 1

    const v0, 0x7f090032

    invoke-virtual {p0, v0}, Lname/kunes/android/launcher/activity/MessageWriteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 3

    const v2, 0x7f09002e

    invoke-super {p0}, Lname/kunes/android/activity/DefaultActivity;->a()V

    invoke-virtual {p0, v2}, Lname/kunes/android/launcher/activity/MessageWriteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x18

    invoke-static {p0, v1}, Lname/kunes/android/launcher/n;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lname/kunes/android/b/i;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-static {p0, v2}, Lname/kunes/android/a/a;->a(Landroid/app/Activity;I)V

    const v0, 0x7f09002f

    invoke-static {p0, v0}, Lname/kunes/android/a/a;->a(Landroid/app/Activity;I)V

    const v0, 0x7f090032

    invoke-static {p0, v0}, Lname/kunes/android/a/a;->a(Landroid/app/Activity;I)V

    invoke-direct {p0}, Lname/kunes/android/launcher/activity/MessageWriteActivity;->j()Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lname/kunes/android/launcher/activity/bw;

    invoke-direct {v1, p0}, Lname/kunes/android/launcher/activity/bw;-><init>(Lname/kunes/android/launcher/activity/MessageWriteActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lname/kunes/android/launcher/activity/MessageWriteActivity;->i()V

    invoke-direct {p0}, Lname/kunes/android/launcher/activity/MessageWriteActivity;->n()Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lname/kunes/android/launcher/activity/bz;

    invoke-direct {v1, p0}, Lname/kunes/android/launcher/activity/bz;-><init>(Lname/kunes/android/launcher/activity/MessageWriteActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lname/kunes/android/launcher/activity/MessageWriteActivity;->m()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lname/kunes/android/launcher/activity/bt;

    invoke-direct {v1, p0}, Lname/kunes/android/launcher/activity/bt;-><init>(Lname/kunes/android/launcher/activity/MessageWriteActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v1, Lname/kunes/android/launcher/activity/bu;

    invoke-direct {v1, p0}, Lname/kunes/android/launcher/activity/bu;-><init>(Lname/kunes/android/launcher/activity/MessageWriteActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-direct {p0}, Lname/kunes/android/launcher/activity/MessageWriteActivity;->m()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/MessageWriteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "body"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/MessageWriteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "conversation_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, v0}, Lname/kunes/android/c/i;->b(Landroid/app/Activity;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-static {p0, v0}, Lname/kunes/android/d/f;->a(Landroid/app/Activity;Landroid/database/Cursor;)Lname/kunes/android/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lname/kunes/android/d/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lname/kunes/android/launcher/activity/MessageWriteActivity;->a(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/MessageWriteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "address"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lname/kunes/android/launcher/activity/MessageWriteActivity;->a(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/MessageWriteActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lname/kunes/android/launcher/activity/MessageWriteActivity;->a:Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lname/kunes/android/launcher/activity/MessageWriteActivity;->b:Ljava/lang/String;

    :cond_2
    invoke-direct {p0}, Lname/kunes/android/launcher/activity/MessageWriteActivity;->d()V

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/MessageWriteActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-direct {p0}, Lname/kunes/android/launcher/activity/MessageWriteActivity;->m()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

.method protected final b_()I
    .locals 1

    new-instance v0, Lname/kunes/android/launcher/c/d;

    invoke-direct {v0, p0}, Lname/kunes/android/launcher/c/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lname/kunes/android/launcher/c/d;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f030009

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f030008

    goto :goto_0
.end method

.method protected final c_()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final f()I
    .locals 1

    const v0, 0x7f060110

    return v0
.end method

.method protected final g()I
    .locals 1

    const v0, 0x7f060114

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lname/kunes/android/launcher/activity/MessageWriteActivity;->l()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-ne p1, v2, :cond_5

    const-string v0, "contact_id"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lname/kunes/android/launcher/activity/MessageWriteActivity;->a:Ljava/lang/String;

    iput-object v3, p0, Lname/kunes/android/launcher/activity/MessageWriteActivity;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/MessageWriteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lname/kunes/android/launcher/activity/MessageWriteActivity;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lname/kunes/android/launcher/activity/g/a;->a(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    iput-object v3, p0, Lname/kunes/android/launcher/activity/MessageWriteActivity;->a:Ljava/lang/String;

    :cond_2
    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/MessageWriteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lname/kunes/android/launcher/activity/MessageWriteActivity;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lname/kunes/android/launcher/activity/g/a;->b(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lname/kunes/android/launcher/activity/MessageWriteActivity;->b:Ljava/lang/String;

    invoke-direct {p0}, Lname/kunes/android/launcher/activity/MessageWriteActivity;->k()Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lname/kunes/android/launcher/activity/MessageWriteActivity;->e()V

    :cond_3
    if-lt v0, v4, :cond_4

    invoke-direct {p0}, Lname/kunes/android/launcher/activity/MessageWriteActivity;->i()V

    invoke-direct {p0}, Lname/kunes/android/launcher/activity/MessageWriteActivity;->k()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    :cond_4
    invoke-direct {p0}, Lname/kunes/android/launcher/activity/MessageWriteActivity;->d()V

    :cond_5
    if-ne p1, v4, :cond_0

    const-string v0, "mime_id"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lname/kunes/android/launcher/activity/MessageWriteActivity;->b:Ljava/lang/String;

    invoke-direct {p0}, Lname/kunes/android/launcher/activity/MessageWriteActivity;->d()V

    goto :goto_0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lname/kunes/android/launcher/activity/MessageWriteActivity;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lname/kunes/android/launcher/activity/MessageWriteActivity;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method
