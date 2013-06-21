.class public Lorg/tf/ErrorReportActivity;
.super Landroid/app/Activity;
.source "ErrorReportActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final CAUSE_CRASH:I = 0x0

.field public static final CAUSE_ERROR:I = 0x1

.field private static final EMAIL:Ljava/lang/String; = "chuesterx@gmail.com"

.field public static final EXTRA_:Ljava/lang/String; = "org.tf.ErrorReport."

.field public static final EXTRA_CAUSE:Ljava/lang/String; = "org.tf.ErrorReport.CAUSE"

.field public static final EXTRA_CAUSE_TEXT:Ljava/lang/String; = "org.tf.ErrorReport.CAUSE_TEXT"

.field public static final EXTRA_DETAILS:Ljava/lang/String; = "org.tf.ErrorReport.DETAILS"

.field public static final EXTRA_PLEASE_TEXT:Ljava/lang/String; = "org.tf.ErrorReport.PLEASE_TEXT"

.field public static final EXTRA_REPORT:Ljava/lang/String; = "org.tf.ErrorReport.REPORT"


# instance fields
.field private m_report:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getCause()I
    .locals 4

    .prologue
    .line 147
    invoke-virtual {p0}, Lorg/tf/ErrorReportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "org.tf.ErrorReport.CAUSE"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 148
    .local v0, cause:I
    if-ltz v0, :cond_0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 149
    :cond_0
    const/4 v0, 0x1

    .line 151
    :cond_1
    return v0
.end method

.method private getCauseMailSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    invoke-direct {p0}, Lorg/tf/ErrorReportActivity;->getCause()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 164
    const v0, 0x7f060009

    invoke-virtual {p0, v0}, Lorg/tf/ErrorReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 163
    :pswitch_0
    const v0, 0x7f060008

    invoke-virtual {p0, v0}, Lorg/tf/ErrorReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 162
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private getCauseText()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 155
    invoke-direct {p0}, Lorg/tf/ErrorReportActivity;->getCause()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 157
    invoke-virtual {p0}, Lorg/tf/ErrorReportActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    .line 156
    :pswitch_0
    invoke-virtual {p0}, Lorg/tf/ErrorReportActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private static getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 4
    .parameter "throwable"

    .prologue
    .line 169
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 171
    .local v1, stackTrace:Ljava/io/StringWriter;
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, message:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 173
    invoke-virtual {v1, v0}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 174
    const-string v3, "\n\n"

    invoke-virtual {v1, v3}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 178
    :cond_0
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 179
    .local v2, writer:Ljava/io/PrintWriter;
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 180
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 182
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static report(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .parameter "context"
    .parameter "cause"
    .parameter "causeText"
    .parameter "pleaseText"
    .parameter "details"
    .parameter "reportOrException"

    .prologue
    const-string v3, "org.tf.ErrorReport.REPORT"

    .line 90
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lorg/tf/ErrorReportActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 91
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "org.tf.ErrorReport.CAUSE"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 92
    if-eqz p2, :cond_0

    .line 93
    const-string v2, "org.tf.ErrorReport.CAUSE_TEXT"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 95
    :cond_0
    if-eqz p3, :cond_1

    .line 96
    const-string v2, "org.tf.ErrorReport.PLEASE_TEXT"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 98
    :cond_1
    if-eqz p4, :cond_2

    .line 99
    const-string v2, "org.tf.ErrorReport.DETAILS"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    :cond_2
    instance-of v2, p5, Ljava/lang/Throwable;

    if-eqz v2, :cond_3

    .line 103
    const-string v2, "org.tf.ErrorReport.REPORT"

    .line 104
    move-object v0, p5

    check-cast v0, Ljava/lang/Throwable;

    move-object v2, v0

    invoke-static {v2}, Lorg/tf/ErrorReportActivity;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 102
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    :cond_3
    instance-of v2, p5, Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 108
    const-string v2, "org.tf.ErrorReport.REPORT"

    .line 109
    check-cast p5, Ljava/lang/String;

    .line 107
    .end local p5
    invoke-virtual {v1, v3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    :cond_4
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 112
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0c000e

    if-ne v1, v2, :cond_1

    .line 130
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    const-string v1, "android.intent.extra.EMAIL"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "chuesterx@gmail.com"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-direct {p0}, Lorg/tf/ErrorReportActivity;->getCauseMailSubject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    const-string v1, "android.intent.extra.TEXT"

    iget-object v2, p0, Lorg/tf/ErrorReportActivity;->m_report:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    const v1, 0x7f060004

    invoke-virtual {p0, v1}, Lorg/tf/ErrorReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 136
    invoke-virtual {p0, v0}, Lorg/tf/ErrorReportActivity;->startActivity(Landroid/content/Intent;)V

    .line 137
    invoke-virtual {p0}, Lorg/tf/ErrorReportActivity;->finish()V

    .line 144
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0c000f

    if-ne v1, v2, :cond_0

    .line 141
    invoke-virtual {p0}, Lorg/tf/ErrorReportActivity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const v11, 0x7f0c000f

    const/16 v10, 0xa

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v12, "\n"

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v6, 0x7f030005

    invoke-virtual {p0, v6}, Lorg/tf/ErrorReportActivity;->setContentView(I)V

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v6, 0x80

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 40
    .local v2, fullReport:Ljava/lang/StringBuilder;
    const v6, 0x7f060001

    invoke-virtual {p0, v6}, Lorg/tf/ErrorReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p0}, Lorg/tf/ErrorReportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "org.tf.ErrorReport.DETAILS"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, details:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 45
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    :cond_0
    invoke-virtual {p0}, Lorg/tf/ErrorReportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "org.tf.ErrorReport.REPORT"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 48
    .local v4, report:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 49
    const-string v6, "\n"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/tf/ErrorReportActivity;->m_report:Ljava/lang/String;

    .line 54
    const v6, 0x7f0c000b

    invoke-virtual {p0, v6}, Lorg/tf/ErrorReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 55
    .local v5, textView:Landroid/widget/TextView;
    invoke-virtual {p0}, Lorg/tf/ErrorReportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "org.tf.ErrorReport.CAUSE_TEXT"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 56
    .local v0, causeText:Ljava/lang/CharSequence;
    if-eqz v0, :cond_4

    .line 57
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    :goto_0
    const v6, 0x7f0c000c

    invoke-virtual {p0, v6}, Lorg/tf/ErrorReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #textView:Landroid/widget/TextView;
    check-cast v5, Landroid/widget/TextView;

    .line 63
    .restart local v5       #textView:Landroid/widget/TextView;
    invoke-virtual {p0}, Lorg/tf/ErrorReportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "org.tf.ErrorReport.PLEASE_TEXT"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 64
    .local v3, pleaseText:Ljava/lang/CharSequence;
    if-eqz v3, :cond_2

    .line 65
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    :cond_2
    const v6, 0x7f0c000d

    invoke-virtual {p0, v6}, Lorg/tf/ErrorReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #textView:Landroid/widget/TextView;
    check-cast v5, Landroid/widget/TextView;

    .line 69
    .restart local v5       #textView:Landroid/widget/TextView;
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 70
    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 71
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setClickable(Z)V

    .line 72
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 73
    iget-object v6, p0, Lorg/tf/ErrorReportActivity;->m_report:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    const v6, 0x7f0c000e

    invoke-virtual {p0, v6}, Lorg/tf/ErrorReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    invoke-virtual {p0, v11}, Lorg/tf/ErrorReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    invoke-direct {p0}, Lorg/tf/ErrorReportActivity;->getCause()I

    move-result v6

    if-eq v6, v9, :cond_3

    .line 78
    invoke-virtual {p0, v11}, Lorg/tf/ErrorReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 80
    :cond_3
    return-void

    .line 59
    .end local v3           #pleaseText:Ljava/lang/CharSequence;
    :cond_4
    invoke-direct {p0}, Lorg/tf/ErrorReportActivity;->getCauseText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
