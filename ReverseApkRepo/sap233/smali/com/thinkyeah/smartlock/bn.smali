.class public abstract Lcom/thinkyeah/smartlock/bn;
.super Landroid/support/v4/app/g;


# static fields
.field private static G:Lcom/thinkyeah/common/c;

.field private static synthetic J:[I


# instance fields
.field private A:Lcom/thinkyeah/smartlock/view/f;

.field private B:I

.field private C:Landroid/os/CountDownTimer;

.field private D:Ljava/lang/CharSequence;

.field private E:Ljava/lang/CharSequence;

.field private F:Lcom/thinkyeah/smartlock/cb;

.field private H:Lcom/thinkyeah/smartlock/cd;

.field private I:Landroid/graphics/drawable/Drawable;

.field protected m:Landroid/widget/ImageView;

.field protected n:Lcom/thinkyeah/smartlock/view/LockPatternView;

.field protected o:Landroid/widget/ImageView;

.field protected p:Landroid/widget/TextView;

.field protected q:Landroid/widget/Button;

.field protected r:Landroid/widget/Button;

.field protected s:Lcom/thinkyeah/smartlock/ap;

.field private t:I

.field private u:Ljava/lang/String;

.field private final v:J

.field private w:I

.field private x:Lcom/thinkyeah/smartlock/co;

.field private y:Landroid/widget/EditText;

.field private z:Lcom/thinkyeah/smartlock/view/PasswordEntryKeyboardView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/thinkyeah/common/c;

    const-class v1, Lcom/thinkyeah/smartlock/bn;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/thinkyeah/common/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/thinkyeah/smartlock/bn;->G:Lcom/thinkyeah/common/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/support/v4/app/g;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/thinkyeah/smartlock/bn;->u:Ljava/lang/String;

    const-wide/32 v0, 0x927c0

    iput-wide v0, p0, Lcom/thinkyeah/smartlock/bn;->v:J

    return-void
.end method

.method static synthetic a(Lcom/thinkyeah/smartlock/bn;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bn;->I:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private a(J)V
    .locals 3

    sget-object v0, Lcom/thinkyeah/smartlock/ce;->c:Lcom/thinkyeah/smartlock/ce;

    invoke-direct {p0, v0}, Lcom/thinkyeah/smartlock/bn;->a(Lcom/thinkyeah/smartlock/ce;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    new-instance v2, Lcom/thinkyeah/smartlock/bq;

    sub-long v0, p1, v0

    invoke-direct {v2, p0, v0, v1}, Lcom/thinkyeah/smartlock/bq;-><init>(Lcom/thinkyeah/smartlock/bn;J)V

    invoke-virtual {v2}, Lcom/thinkyeah/smartlock/bq;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/thinkyeah/smartlock/bn;->C:Landroid/os/CountDownTimer;

    return-void
.end method

.method static synthetic a(Lcom/thinkyeah/smartlock/bn;I)V
    .locals 0

    iput p1, p0, Lcom/thinkyeah/smartlock/bn;->B:I

    return-void
.end method

.method static synthetic a(Lcom/thinkyeah/smartlock/bn;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/thinkyeah/smartlock/bn;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/thinkyeah/smartlock/bn;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/smartlock/bn;->I:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic a(Lcom/thinkyeah/smartlock/bn;Lcom/thinkyeah/smartlock/ce;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/thinkyeah/smartlock/bn;->a(Lcom/thinkyeah/smartlock/ce;)V

    return-void
.end method

.method private a(Lcom/thinkyeah/smartlock/ce;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/thinkyeah/smartlock/bn;->o()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/thinkyeah/smartlock/ce;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/thinkyeah/smartlock/bn;->D:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bn;->p:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/bn;->D:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget v0, p0, Lcom/thinkyeah/smartlock/bn;->w:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bn;->n:Lcom/thinkyeah/smartlock/view/LockPatternView;

    invoke-virtual {v0, v2}, Lcom/thinkyeah/smartlock/view/LockPatternView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bn;->n:Lcom/thinkyeah/smartlock/view/LockPatternView;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/view/LockPatternView;->c()V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/thinkyeah/smartlock/bn;->w:I

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/thinkyeah/smartlock/bn;->p:Landroid/widget/TextView;

    const v1, 0x7f090051

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/thinkyeah/smartlock/bn;->p:Landroid/widget/TextView;

    const v1, 0x7f090052

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/thinkyeah/smartlock/bn;->p:Landroid/widget/TextView;

    const v1, 0x7f090053

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/thinkyeah/smartlock/bn;->y:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bn;->z:Lcom/thinkyeah/smartlock/view/PasswordEntryKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bn;->z:Lcom/thinkyeah/smartlock/view/PasswordEntryKeyboardView;

    invoke-virtual {v0, v2}, Lcom/thinkyeah/smartlock/view/PasswordEntryKeyboardView;->setEnabled(Z)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/thinkyeah/smartlock/bn;->E:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bn;->p:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/bn;->E:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget v0, p0, Lcom/thinkyeah/smartlock/bn;->w:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bn;->n:Lcom/thinkyeah/smartlock/view/LockPatternView;

    sget-object v1, Lcom/thinkyeah/smartlock/view/b;->c:Lcom/thinkyeah/smartlock/view/b;

    invoke-virtual {v0, v1}, Lcom/thinkyeah/smartlock/view/LockPatternView;->setDisplayMode(Lcom/thinkyeah/smartlock/view/b;)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bn;->n:Lcom/thinkyeah/smartlock/view/LockPatternView;

    invoke-virtual {v0, v2}, Lcom/thinkyeah/smartlock/view/LockPatternView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bn;->n:Lcom/thinkyeah/smartlock/view/LockPatternView;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/view/LockPatternView;->c()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/thinkyeah/smartlock/bn;->p:Landroid/widget/TextView;

    const v1, 0x7f090055

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/thinkyeah/smartlock/bn;->y:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bn;->z:Lcom/thinkyeah/smartlock/view/PasswordEntryKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bn;->z:Lcom/thinkyeah/smartlock/view/PasswordEntryKeyboardView;

    invoke-virtual {v0, v2}, Lcom/thinkyeah/smartlock/view/PasswordEntryKeyboardView;->setEnabled(Z)V

    goto/16 :goto_0

    :pswitch_5
    iget v0, p0, Lcom/thinkyeah/smartlock/bn;->w:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bn;->n:Lcom/thinkyeah/smartlock/view/LockPatternView;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/view/LockPatternView;->a()V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bn;->n:Lcom/thinkyeah/smartlock/view/LockPatternView;

    invoke-virtual {v0, v3}, Lcom/thinkyeah/smartlock/view/LockPatternView;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/thinkyeah/smartlock/bn;->y:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bn;->z:Lcom/thinkyeah/smartlock/view/PasswordEntryKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bn;->z:Lcom/thinkyeah/smartlock/view/PasswordEntryKeyboardView;

    invoke-virtual {v0, v3}, Lcom/thinkyeah/smartlock/view/PasswordEntryKeyboardView;->setEnabled(Z)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic b(Lcom/thinkyeah/smartlock/bn;)Lcom/thinkyeah/smartlock/co;
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bn;->x:Lcom/thinkyeah/smartlock/co;

    return-object v0
.end method

.method static synthetic c(Lcom/thinkyeah/smartlock/bn;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bn;->u:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/thinkyeah/smartlock/bn;)I
    .locals 1

    iget v0, p0, Lcom/thinkyeah/smartlock/bn;->B:I

    return v0
.end method

.method static synthetic e(Lcom/thinkyeah/smartlock/bn;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bn;->y:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic f(Lcom/thinkyeah/smartlock/bn;)I
    .locals 1

    iget v0, p0, Lcom/thinkyeah/smartlock/bn;->w:I

    return v0
.end method

.method static synthetic g(Lcom/thinkyeah/smartlock/bn;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget v1, p0, Lcom/thinkyeah/smartlock/bn;->w:I

    if-nez v1, :cond_2

    const v0, 0x7f090065

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    const-string v1, "confirm_credentials"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0x27

    invoke-virtual {p0, v0, v1}, Lcom/thinkyeah/smartlock/bn;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    return-void

    :cond_2
    iget v1, p0, Lcom/thinkyeah/smartlock/bn;->w:I

    if-ne v1, v3, :cond_3

    const v0, 0x7f090066

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "PasswordType"

    const/high16 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/thinkyeah/smartlock/bn;->w:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const v0, 0x7f090067

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "PasswordType"

    const/high16 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method static synthetic h(Lcom/thinkyeah/smartlock/bn;)V
    .locals 3

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bn;->s:Lcom/thinkyeah/smartlock/ap;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/ap;->s()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bn;->s:Lcom/thinkyeah/smartlock/ap;

    iget-object v0, v0, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/ai;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/thinkyeah/smartlock/bu;->a(Ljava/lang/String;)Lcom/thinkyeah/smartlock/bu;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/g;->b:Landroid/support/v4/app/l;

    const-string v2, "authEmailDialog"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/d;->a(Landroid/support/v4/app/k;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/thinkyeah/smartlock/bn;->s:Lcom/thinkyeah/smartlock/ap;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/ap;->s()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bn;->s:Lcom/thinkyeah/smartlock/ap;

    iget-object v0, v0, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/ai;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/thinkyeah/smartlock/by;->a(Ljava/lang/String;)Lcom/thinkyeah/smartlock/by;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/g;->b:Landroid/support/v4/app/l;

    const-string v2, "qAndADialog"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/d;->a(Landroid/support/v4/app/k;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic n()Lcom/thinkyeah/common/c;
    .locals 1

    sget-object v0, Lcom/thinkyeah/smartlock/bn;->G:Lcom/thinkyeah/common/c;

    return-object v0
.end method

.method private static synthetic o()[I
    .locals 3

    sget-object v0, Lcom/thinkyeah/smartlock/bn;->J:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/thinkyeah/smartlock/ce;->values()[Lcom/thinkyeah/smartlock/ce;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/thinkyeah/smartlock/ce;->c:Lcom/thinkyeah/smartlock/ce;

    invoke-virtual {v1}, Lcom/thinkyeah/smartlock/ce;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/thinkyeah/smartlock/ce;->a:Lcom/thinkyeah/smartlock/ce;

    invoke-virtual {v1}, Lcom/thinkyeah/smartlock/ce;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/thinkyeah/smartlock/ce;->b:Lcom/thinkyeah/smartlock/ce;

    invoke-virtual {v1}, Lcom/thinkyeah/smartlock/ce;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/thinkyeah/smartlock/bn;->J:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method protected abstract a(ILjava/lang/String;)V
.end method

.method protected abstract a(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method protected abstract a(Ljava/lang/String;)Z
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/thinkyeah/smartlock/bn;->s:Lcom/thinkyeah/smartlock/ap;

    iget-object v1, v1, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/thinkyeah/smartlock/ai;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "##"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p1, v1}, Lcom/thinkyeah/common/i;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bn;->F:Lcom/thinkyeah/smartlock/cb;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "AuthenticationCode"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/thinkyeah/smartlock/ai;->a(Landroid/content/Context;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected abstract g()V
.end method

.method protected abstract h()V
.end method

.method protected abstract i()V
.end method

.method public final j()V
    .locals 4

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const v1, 0xf4240

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    new-instance v1, Lcom/thinkyeah/smartlock/cb;

    invoke-direct {v1, p0, v0}, Lcom/thinkyeah/smartlock/cb;-><init>(Landroid/support/v4/app/g;I)V

    iput-object v1, p0, Lcom/thinkyeah/smartlock/bn;->F:Lcom/thinkyeah/smartlock/cb;

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bn;->F:Lcom/thinkyeah/smartlock/cb;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/thinkyeah/smartlock/bn;->s:Lcom/thinkyeah/smartlock/ap;

    iget-object v3, v3, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/thinkyeah/smartlock/ai;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/thinkyeah/smartlock/cb;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public final k()I
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "AuthenticationCodeDeadline"

    invoke-static {p0, v3}, Lcom/thinkyeah/smartlock/ai;->a(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v3

    cmp-long v1, v3, v1

    if-lez v1, :cond_0

    const-string v1, "AuthenticationCode"

    invoke-static {p0, v1, v0}, Lcom/thinkyeah/smartlock/ai;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    :cond_0
    return v0
.end method

.method public final l()J
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x927c0

    add-long/2addr v0, v2

    const-string v2, "AuthenticationCodeDeadline"

    invoke-static {p0, v2, v0, v1}, Lcom/thinkyeah/smartlock/ai;->a(Landroid/content/Context;Ljava/lang/String;J)Z

    return-wide v0
.end method

.method public final m()V
    .locals 3

    const-string v0, "AuthenticationCodeDeadline"

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/thinkyeah/smartlock/ai;->a(Landroid/content/Context;Ljava/lang/String;J)Z

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v3, -0x1

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/g;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-ne p2, v3, :cond_0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bn;->x:Lcom/thinkyeah/smartlock/co;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/co;->f()V

    const-string v0, "AuthenticationCodeDeadline"

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/thinkyeah/smartlock/ai;->a(Landroid/content/Context;Ljava/lang/String;J)Z

    invoke-virtual {p0, v3}, Lcom/thinkyeah/smartlock/bn;->setResult(I)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bn;->u:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/bn;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/bn;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 0

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/bn;->h()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/high16 v6, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/support/v4/app/g;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v2}, Lcom/thinkyeah/smartlock/bn;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/bn;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/thinkyeah/smartlock/ap;->a(Landroid/content/Context;)Lcom/thinkyeah/smartlock/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/thinkyeah/smartlock/bn;->s:Lcom/thinkyeah/smartlock/ap;

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bn;->s:Lcom/thinkyeah/smartlock/ap;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/ap;->m()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/bn;->i()V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/bn;->setResult(I)V

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/bn;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/thinkyeah/smartlock/co;

    invoke-direct {v0, p0}, Lcom/thinkyeah/smartlock/co;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/thinkyeah/smartlock/bn;->x:Lcom/thinkyeah/smartlock/co;

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bn;->s:Lcom/thinkyeah/smartlock/ap;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/ap;->q()I

    move-result v0

    iput v0, p0, Lcom/thinkyeah/smartlock/bn;->w:I

    iget v0, p0, Lcom/thinkyeah/smartlock/bn;->w:I

    if-nez v0, :cond_6

    const v0, 0x7f030017

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/bn;->setContentView(I)V

    const v0, 0x7f0b0014

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/bn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/thinkyeah/smartlock/view/LockPatternView;

    iput-object v0, p0, Lcom/thinkyeah/smartlock/bn;->n:Lcom/thinkyeah/smartlock/view/LockPatternView;

    iget-object v3, p0, Lcom/thinkyeah/smartlock/bn;->n:Lcom/thinkyeah/smartlock/view/LockPatternView;

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bn;->s:Lcom/thinkyeah/smartlock/ap;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/ap;->n()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/thinkyeah/smartlock/view/LockPatternView;->setInStealthMode(Z)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bn;->n:Lcom/thinkyeah/smartlock/view/LockPatternView;

    iget-object v3, p0, Lcom/thinkyeah/smartlock/bn;->s:Lcom/thinkyeah/smartlock/ap;

    invoke-virtual {v3}, Lcom/thinkyeah/smartlock/ap;->k()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/thinkyeah/smartlock/view/LockPatternView;->setTactileFeedbackEnabled(Z)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bn;->n:Lcom/thinkyeah/smartlock/view/LockPatternView;

    new-instance v3, Lcom/thinkyeah/smartlock/bs;

    invoke-direct {v3, p0, v1}, Lcom/thinkyeah/smartlock/bs;-><init>(Lcom/thinkyeah/smartlock/bn;B)V

    invoke-virtual {v0, v3}, Lcom/thinkyeah/smartlock/view/LockPatternView;->setOnPatternListener(Lcom/thinkyeah/smartlock/view/c;)V

    :cond_2
    :goto_2
    const v0, 0x7f0b003b

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/bn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/thinkyeah/smartlock/bn;->m:Landroid/widget/ImageView;

    const v0, 0x7f0b003d

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/bn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/thinkyeah/smartlock/bn;->o:Landroid/widget/ImageView;

    const v0, 0x7f0b0013

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/bn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/thinkyeah/smartlock/bn;->p:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/bn;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v3, "com.thinkyeah.smartlock.LockingActivity.header"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/thinkyeah/smartlock/bn;->D:Ljava/lang/CharSequence;

    const-string v3, "com.thinkyeah.smartlock.LockingActivity.header_wrong"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/thinkyeah/smartlock/bn;->E:Ljava/lang/CharSequence;

    const-string v3, "LockReason"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/thinkyeah/smartlock/bn;->t:I

    const-string v2, "LaunchingAppPackage"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/thinkyeah/smartlock/bn;->u:Ljava/lang/String;

    iget v2, p0, Lcom/thinkyeah/smartlock/bn;->t:I

    iget-object v3, p0, Lcom/thinkyeah/smartlock/bn;->u:Ljava/lang/String;

    const-string v4, "LaunchingAppActivity"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v3, v0}, Lcom/thinkyeah/smartlock/bn;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_3
    const v0, 0x7f0b003f

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/bn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/thinkyeah/smartlock/bn;->q:Landroid/widget/Button;

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bn;->q:Landroid/widget/Button;

    new-instance v2, Lcom/thinkyeah/smartlock/bo;

    invoke-direct {v2, p0}, Lcom/thinkyeah/smartlock/bo;-><init>(Lcom/thinkyeah/smartlock/bn;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0040

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/bn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/thinkyeah/smartlock/bn;->r:Landroid/widget/Button;

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bn;->r:Landroid/widget/Button;

    new-instance v2, Lcom/thinkyeah/smartlock/bp;

    invoke-direct {v2, p0}, Lcom/thinkyeah/smartlock/bp;-><init>(Lcom/thinkyeah/smartlock/bn;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p1, :cond_4

    const-string v0, "num_wrong_attempts"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/thinkyeah/smartlock/bn;->B:I

    :cond_4
    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/bn;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020064

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/thinkyeah/smartlock/bn;->I:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bn;->m:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/thinkyeah/smartlock/bn;->I:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lcom/thinkyeah/smartlock/cd;

    invoke-direct {v0, p0, v1}, Lcom/thinkyeah/smartlock/cd;-><init>(Lcom/thinkyeah/smartlock/bn;B)V

    iput-object v0, p0, Lcom/thinkyeah/smartlock/bn;->H:Lcom/thinkyeah/smartlock/cd;

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bn;->H:Lcom/thinkyeah/smartlock/cd;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/thinkyeah/smartlock/cd;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/bn;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thinkyeah/smartlock/cb;

    iput-object v0, p0, Lcom/thinkyeah/smartlock/bn;->F:Lcom/thinkyeah/smartlock/cb;

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bn;->F:Lcom/thinkyeah/smartlock/cb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bn;->F:Lcom/thinkyeah/smartlock/cb;

    invoke-virtual {v0, p0}, Lcom/thinkyeah/smartlock/cb;->a(Landroid/support/v4/app/g;)V

    goto/16 :goto_0

    :cond_5
    move v0, v2

    goto/16 :goto_1

    :cond_6
    const v0, 0x7f030016

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/bn;->setContentView(I)V

    iget v0, p0, Lcom/thinkyeah/smartlock/bn;->w:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_8

    move v3, v2

    :goto_3
    const v0, 0x7f0b003e

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/bn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/thinkyeah/smartlock/bn;->y:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bn;->y:Landroid/widget/EditText;

    const/high16 v4, 0x1000

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    if-eqz v3, :cond_9

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bn;->y:Landroid/widget/EditText;

    const/16 v4, 0x81

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setInputType(I)V

    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/thinkyeah/smartlock/bn;->y:Landroid/widget/EditText;

    new-instance v4, Lcom/thinkyeah/smartlock/br;

    invoke-direct {v4, p0, v1}, Lcom/thinkyeah/smartlock/br;-><init>(Lcom/thinkyeah/smartlock/bn;B)V

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bn;->y:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    const v0, 0x7f0b000f

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/bn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/thinkyeah/smartlock/view/PasswordEntryKeyboardView;

    iput-object v0, p0, Lcom/thinkyeah/smartlock/bn;->z:Lcom/thinkyeah/smartlock/view/PasswordEntryKeyboardView;

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bn;->z:Lcom/thinkyeah/smartlock/view/PasswordEntryKeyboardView;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/thinkyeah/smartlock/view/f;

    iget-object v4, p0, Lcom/thinkyeah/smartlock/bn;->z:Lcom/thinkyeah/smartlock/view/PasswordEntryKeyboardView;

    iget-object v5, p0, Lcom/thinkyeah/smartlock/bn;->y:Landroid/widget/EditText;

    invoke-direct {v0, p0, v4, v5}, Lcom/thinkyeah/smartlock/view/f;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V

    iput-object v0, p0, Lcom/thinkyeah/smartlock/bn;->A:Lcom/thinkyeah/smartlock/view/f;

    iget-object v4, p0, Lcom/thinkyeah/smartlock/bn;->A:Lcom/thinkyeah/smartlock/view/f;

    if-eqz v3, :cond_a

    move v0, v1

    :goto_5
    invoke-virtual {v4, v0}, Lcom/thinkyeah/smartlock/view/f;->a(I)V

    iget-object v3, p0, Lcom/thinkyeah/smartlock/bn;->A:Lcom/thinkyeah/smartlock/view/f;

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bn;->s:Lcom/thinkyeah/smartlock/ap;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/ap;->k()Z

    move-result v0

    if-eqz v0, :cond_b

    const/high16 v0, 0x7f07

    :goto_6
    invoke-virtual {v3, v0}, Lcom/thinkyeah/smartlock/view/f;->b(I)V

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/bn;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v6, v6}, Landroid/view/Window;->setFlags(II)V

    goto/16 :goto_2

    :cond_8
    move v3, v1

    goto :goto_3

    :cond_9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v0, v4, :cond_7

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bn;->y:Landroid/widget/EditText;

    const/16 v4, 0x12

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_4

    :cond_a
    move v0, v2

    goto :goto_5

    :cond_b
    move v0, v1

    goto :goto_6
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bn;->H:Lcom/thinkyeah/smartlock/cd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bn;->H:Lcom/thinkyeah/smartlock/cd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/thinkyeah/smartlock/cd;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/thinkyeah/smartlock/bn;->s:Lcom/thinkyeah/smartlock/ap;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/ap;->h()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bn;->I:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bn;->I:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bn;->I:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/thinkyeah/smartlock/bn;->I:Landroid/graphics/drawable/Drawable;

    :cond_1
    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-super {p0}, Landroid/support/v4/app/g;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bn;->C:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bn;->C:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/g;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 6

    invoke-super {p0}, Landroid/support/v4/app/g;->onResume()V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bn;->x:Lcom/thinkyeah/smartlock/co;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/co;->g()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-string v2, "AuthenticationCodeDeadline"

    invoke-static {p0, v2}, Lcom/thinkyeah/smartlock/ai;->a(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/thinkyeah/smartlock/bn;->s:Lcom/thinkyeah/smartlock/ap;

    invoke-virtual {v2}, Lcom/thinkyeah/smartlock/ap;->l()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/thinkyeah/smartlock/bn;->r:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/thinkyeah/smartlock/bn;->a(J)V

    :cond_2
    iget v0, p0, Lcom/thinkyeah/smartlock/bn;->t:I

    iget-object v1, p0, Lcom/thinkyeah/smartlock/bn;->u:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/thinkyeah/smartlock/bn;->a(ILjava/lang/String;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "num_wrong_attempts"

    iget v1, p0, Lcom/thinkyeah/smartlock/bn;->B:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-super {p0, p1}, Landroid/support/v4/app/g;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/g;->onStart()V

    sget-object v0, Lcom/thinkyeah/smartlock/ce;->a:Lcom/thinkyeah/smartlock/ce;

    invoke-direct {p0, v0}, Lcom/thinkyeah/smartlock/bn;->a(Lcom/thinkyeah/smartlock/ce;)V

    return-void
.end method
