.class public final Lhk;
.super Ljava/lang/Object;


# direct methods
.method public static 癤욱븳援(Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 11

    const/16 v10, 0x21

    const/16 v9, 0x9

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v8, 0x2

    new-array v5, v8, [C

    fill-array-data v5, :array_0

    const/16 v0, 0x3c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object v3, v0

    move v0, v1

    :cond_0
    :goto_0
    invoke-static {v3, v5, v0}, Leo;->癤욱븳援(Ljava/lang/CharSequence;[CI)I

    move-result v0

    if-gez v0, :cond_3

    return-object v3

    :cond_1
    and-int/lit16 v0, p1, 0x100

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {p0, v0}, Lhz;->癤욱븳援(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    move-object v3, v0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    const/16 v6, 0x7b

    if-ne v4, v6, :cond_8

    const/16 v4, 0x7d

    add-int/lit8 v6, v0, 0x1

    invoke-static {v3, v4, v6}, Leo;->癤욱븳援(Ljava/lang/CharSequence;II)I

    move-result v4

    if-ltz v4, :cond_7

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v3, v6, v4}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v0, v4}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-le v4, v8, :cond_0

    invoke-interface {v6, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v7, 0x3a

    if-ne v4, v7, :cond_0

    invoke-interface {v6, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v7, 0x79

    if-eq v4, v7, :cond_4

    const/16 v7, 0x59

    if-ne v4, v7, :cond_5

    :cond_4
    invoke-interface {v6, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    new-instance v4, Landroid/text/style/StyleSpan;

    invoke-direct {v4, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    :goto_2
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v3, v4, v0, v6, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :sswitch_1
    new-instance v4, Landroid/text/style/StyleSpan;

    invoke-direct {v4, v8}, Landroid/text/style/StyleSpan;-><init>(I)V

    goto :goto_2

    :sswitch_2
    new-instance v4, Landroid/text/style/UnderlineSpan;

    invoke-direct {v4}, Landroid/text/style/UnderlineSpan;-><init>()V

    goto :goto_2

    :sswitch_3
    new-instance v4, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v4}, Landroid/text/style/StrikethroughSpan;-><init>()V

    goto :goto_2

    :cond_5
    const/16 v7, 0x63

    if-eq v4, v7, :cond_6

    const/16 v7, 0x43

    if-ne v4, v7, :cond_0

    :cond_6
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v4, v9, :cond_0

    invoke-interface {v6, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v7, 0x24

    if-ne v4, v7, :cond_0

    const/4 v4, 0x3

    const/16 v7, 0x9

    :try_start_0
    invoke-interface {v6, v4, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x10

    invoke-static {v4, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v7

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v6, v7, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v6, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/16 v7, 0x21

    invoke-virtual {v3, v6, v0, v4, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v4

    goto/16 :goto_0

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_8
    add-int/lit8 v4, v0, 0x1

    const-string v6, "\n"

    invoke-virtual {v3, v0, v4, v6}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    nop

    :array_0
    .array-data 0x2
        0x7bt 0x0t
        0x7ct 0x0t
    .end array-data

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_0
        0x49 -> :sswitch_1
        0x53 -> :sswitch_3
        0x55 -> :sswitch_2
        0x62 -> :sswitch_0
        0x69 -> :sswitch_1
        0x73 -> :sswitch_3
        0x75 -> :sswitch_2
    .end sparse-switch
.end method
