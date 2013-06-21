.class public Lcom/wolfram/android/alpha/activity/AssumptionsActivity;
.super Lcom/wolfram/android/alpha/activity/Activity_modified;
.source "AssumptionsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final ASSUMPTION_INPUT_KEY:Ljava/lang/String; = "com.wolfram.android.alpha.assumptioninput"

.field public static final FORMULA_VARIABLES_KEY:Ljava/lang/String; = "com.wolfram.android.alpha.formulavars"

.field private static final FORMULA_VIEW_TAG:Ljava/lang/String; = "formula_variable"

.field public static final TYPE_ANGLEUNIT:I = 0x4

.field public static final TYPE_ATTRIBUTE:I = 0x7

.field public static final TYPE_CLASH:I = 0x1

.field public static final TYPE_COORDINATESYSTEM:I = 0xc

.field public static final TYPE_DATEORDER:I = 0x9

.field public static final TYPE_DNAORSTRING:I = 0x11

.field public static final TYPE_FORMULASELECT:I = 0x65

.field public static final TYPE_FORMULASOLVE:I = 0x66

.field public static final TYPE_FORMULAVARIABLE:I = 0x67

.field public static final TYPE_FORMULAVARIABLEINCLUDE:I = 0x69

.field public static final TYPE_FORMULAVARIABLEOPTION:I = 0x68

.field public static final TYPE_FUNCTION:I = 0x5

.field public static final TYPE_I:I = 0xd

.field public static final TYPE_LISTORNUMBER:I = 0xb

.field public static final TYPE_LISTORTIMES:I = 0xa

.field public static final TYPE_MIXEDFRACTION:I = 0xf

.field public static final TYPE_MORTALITYYEARDOB:I = 0x10

.field public static final TYPE_MULTICLASH:I = 0x2

.field public static final TYPE_NUMBERBASE:I = 0xe

.field public static final TYPE_SUBCATEGORY:I = 0x6

.field public static final TYPE_TIDESTATION:I = 0x12

.field public static final TYPE_TIMEAMORPM:I = 0x8

.field public static final TYPE_UNIT:I = 0x3

.field public static final TYPE_UNKNOWN:I = 0xc8

.field public static assumptions_text_array:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static logger:Ljava/util/logging/Logger;


# instance fields
.field private formulaVariableViewIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 220
    const-string v0, "com.wolfram.android.alpha.acitivity.AssumptionsActivity"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/wolfram/android/alpha/activity/AssumptionsActivity;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/wolfram/android/alpha/activity/Activity_modified;-><init>()V

    .line 163
    const/4 v0, 0x0

    iput v0, p0, Lcom/wolfram/android/alpha/activity/AssumptionsActivity;->formulaVariableViewIndex:I

    return-void
.end method

.method public static assumptionTypeToTypeCode(Ljava/lang/String;)I
    .locals 1
    .parameter "type"

    .prologue
    .line 395
    const-string v0, "Clash"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    const/4 v0, 0x1

    .line 442
    :goto_0
    return v0

    .line 397
    :cond_0
    const-string v0, "MultiClash"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 398
    const/4 v0, 0x2

    goto :goto_0

    .line 399
    :cond_1
    const-string v0, "Unit"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 400
    const/4 v0, 0x3

    goto :goto_0

    .line 401
    :cond_2
    const-string v0, "AngleUnit"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 402
    const/4 v0, 0x4

    goto :goto_0

    .line 403
    :cond_3
    const-string v0, "Function"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 404
    const/4 v0, 0x5

    goto :goto_0

    .line 405
    :cond_4
    const-string v0, "SubCategory"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 406
    const/4 v0, 0x6

    goto :goto_0

    .line 407
    :cond_5
    const-string v0, "Attribute"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 408
    const/4 v0, 0x7

    goto :goto_0

    .line 409
    :cond_6
    const-string v0, "FormulaSelect"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 410
    const/16 v0, 0x65

    goto :goto_0

    .line 411
    :cond_7
    const-string v0, "FormulaSolve"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 412
    const/16 v0, 0x66

    goto :goto_0

    .line 413
    :cond_8
    const-string v0, "FormulaVariable"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 414
    const/16 v0, 0x67

    goto :goto_0

    .line 415
    :cond_9
    const-string v0, "FormulaVariableOption"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 416
    const/16 v0, 0x68

    goto :goto_0

    .line 417
    :cond_a
    const-string v0, "FormulaVariableInclude"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 418
    const/16 v0, 0x69

    goto :goto_0

    .line 419
    :cond_b
    const-string v0, "TimeAMOrPM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 420
    const/16 v0, 0x8

    goto :goto_0

    .line 421
    :cond_c
    const-string v0, "DateOrder"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 422
    const/16 v0, 0x9

    goto/16 :goto_0

    .line 423
    :cond_d
    const-string v0, "ListOrTimes"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 424
    const/16 v0, 0xa

    goto/16 :goto_0

    .line 425
    :cond_e
    const-string v0, "ListOrNumber"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 426
    const/16 v0, 0xb

    goto/16 :goto_0

    .line 427
    :cond_f
    const-string v0, "CoordinateSystem"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 428
    const/16 v0, 0xc

    goto/16 :goto_0

    .line 429
    :cond_10
    const-string v0, "I"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 430
    const/16 v0, 0xd

    goto/16 :goto_0

    .line 431
    :cond_11
    const-string v0, "NumberBase"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 432
    const/16 v0, 0xe

    goto/16 :goto_0

    .line 433
    :cond_12
    const-string v0, "MixedFraction"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 434
    const/16 v0, 0xf

    goto/16 :goto_0

    .line 435
    :cond_13
    const-string v0, "MortalityYearDOB"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 436
    const/16 v0, 0x10

    goto/16 :goto_0

    .line 437
    :cond_14
    const-string v0, "DNAOrString"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 438
    const/16 v0, 0x11

    goto/16 :goto_0

    .line 439
    :cond_15
    const-string v0, "TideStation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 440
    const/16 v0, 0x12

    goto/16 :goto_0

    .line 442
    :cond_16
    const/16 v0, 0xc8

    goto/16 :goto_0
.end method

.method public static capitalizeFirstLetter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    .line 456
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    .line 459
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static formatAssumptionString(Lcom/wolfram/alpha/WAAssumption;IIZ)Ljava/lang/String;
    .locals 4
    .parameter "assumption"
    .parameter "assumptionType"
    .parameter "valueIndex"
    .parameter "isCurrentValue"

    .prologue
    .line 308
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    invoke-interface {p0}, Lcom/wolfram/alpha/WAAssumption;->getWords()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p2

    move-object v1, v2

    .line 309
    .local v1, word:Ljava/lang/String;
    :goto_0
    invoke-interface {p0}, Lcom/wolfram/alpha/WAAssumption;->getDescriptions()[Ljava/lang/String;

    move-result-object v2

    aget-object v0, v2, p2

    .line 311
    .local v0, desc:Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 387
    const-string v2, ""

    :goto_1
    return-object v2

    .line 308
    .end local v0           #desc:Ljava/lang/String;
    .end local v1           #word:Ljava/lang/String;
    :cond_0
    invoke-interface {p0}, Lcom/wolfram/alpha/WAAssumption;->getWord()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    .line 315
    .restart local v0       #desc:Ljava/lang/String;
    .restart local v1       #word:Ljava/lang/String;
    :sswitch_0
    if-eqz p3, :cond_1

    .line 316
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Assuming \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 318
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Use "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " instead"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 322
    :sswitch_1
    if-eqz p3, :cond_2

    .line 323
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Assuming \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 325
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Use "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " instead"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 336
    :sswitch_2
    if-eqz p3, :cond_3

    .line 337
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Assuming "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 339
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Use "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " instead"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 342
    :sswitch_3
    if-eqz p3, :cond_4

    .line 343
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Assuming "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 345
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Use "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " instead"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 349
    :sswitch_4
    if-eqz p3, :cond_5

    .line 350
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Assuming "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 352
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 356
    :sswitch_5
    if-eqz p3, :cond_7

    .line 357
    const-string v2, "the input"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Assuming "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " refers to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Assuming \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" refers to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 361
    :cond_7
    const-string v2, "the input"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Use the input as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Use \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 367
    :sswitch_6
    if-eqz p3, :cond_a

    .line 368
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 370
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Use "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " instead"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 373
    :sswitch_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calculate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 375
    :sswitch_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Also include "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :sswitch_9
    move-object v2, v0

    .line 377
    goto/16 :goto_1

    .line 380
    :sswitch_a
    if-eqz p3, :cond_b

    .line 381
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Assuming "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 383
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Use "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " instead"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 311
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_5
        0x3 -> :sswitch_3
        0x4 -> :sswitch_2
        0x5 -> :sswitch_1
        0x6 -> :sswitch_2
        0x7 -> :sswitch_2
        0x8 -> :sswitch_2
        0x9 -> :sswitch_2
        0xa -> :sswitch_2
        0xb -> :sswitch_4
        0xc -> :sswitch_6
        0xd -> :sswitch_2
        0xe -> :sswitch_1
        0xf -> :sswitch_4
        0x10 -> :sswitch_0
        0x11 -> :sswitch_0
        0x12 -> :sswitch_6
        0x65 -> :sswitch_2
        0x66 -> :sswitch_7
        0x67 -> :sswitch_9
        0x68 -> :sswitch_2
        0x69 -> :sswitch_8
        0xc8 -> :sswitch_a
    .end sparse-switch
.end method

.method public static isFormulaAssumption(I)Z
    .locals 1
    .parameter "assumptionCode"

    .prologue
    .line 447
    const/16 v0, 0x65

    if-eq p0, v0, :cond_0

    const/16 v0, 0x66

    if-eq p0, v0, :cond_0

    const/16 v0, 0x67

    if-eq p0, v0, :cond_0

    const/16 v0, 0x69

    if-eq p0, v0, :cond_0

    const/16 v0, 0x68

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public handleFormulaVariable(Lcom/wolfram/alpha/WAAssumption;)Landroid/widget/LinearLayout;
    .locals 13
    .parameter "assumption"

    .prologue
    .line 169
    const/4 v2, 0x0

    .line 170
    .local v2, formulaVariableView:Landroid/widget/LinearLayout;
    invoke-interface {p1}, Lcom/wolfram/alpha/WAAssumption;->getCount()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/AssumptionsActivity;->getLayoutInflater()Lcom/wolfram/android/alpha/LayoutInflater_modified;

    move-result-object v10

    const v11, 0x7f030035

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/wolfram/android/alpha/LayoutInflater_modified;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .end local v2           #formulaVariableView:Landroid/widget/LinearLayout;
    check-cast v2, Landroid/widget/LinearLayout;

    .line 173
    .restart local v2       #formulaVariableView:Landroid/widget/LinearLayout;
    const v10, 0x7f0e003e

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 174
    .local v5, label:Landroid/widget/TextView;
    const v10, 0x7f0e0040

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 175
    .local v0, editView:Landroid/widget/EditText;
    invoke-interface {p1}, Lcom/wolfram/alpha/WAAssumption;->getDescription()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/wolfram/android/alpha/activity/AssumptionsActivity;->capitalizeFirstLetter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    invoke-interface {p1}, Lcom/wolfram/alpha/WAAssumption;->getDescriptions()[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v0, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 177
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "formula_variable"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/wolfram/android/alpha/activity/AssumptionsActivity;->formulaVariableViewIndex:I

    add-int/lit8 v12, v11, 0x1

    iput v12, p0, Lcom/wolfram/android/alpha/activity/AssumptionsActivity;->formulaVariableViewIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 178
    const v10, 0x7f080003

    invoke-interface {p1}, Lcom/wolfram/alpha/WAAssumption;->getInputs()[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-virtual {v0, v10, v11}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 179
    const v10, 0x7f080005

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 216
    .end local v0           #editView:Landroid/widget/EditText;
    .end local v5           #label:Landroid/widget/TextView;
    :goto_0
    return-object v2

    .line 182
    :cond_0
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/AssumptionsActivity;->getLayoutInflater()Lcom/wolfram/android/alpha/LayoutInflater_modified;

    move-result-object v10

    const v11, 0x7f030006

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/wolfram/android/alpha/LayoutInflater_modified;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .end local v2           #formulaVariableView:Landroid/widget/LinearLayout;
    check-cast v2, Landroid/widget/LinearLayout;

    .line 184
    .restart local v2       #formulaVariableView:Landroid/widget/LinearLayout;
    const v10, 0x7f0e0001

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 186
    .local v3, headerRow:Landroid/widget/TextView;
    const v10, 0x7f0a001e

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 187
    invoke-interface {p1}, Lcom/wolfram/alpha/WAAssumption;->getDescription()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/wolfram/android/alpha/activity/AssumptionsActivity;->capitalizeFirstLetter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    invoke-interface {p1}, Lcom/wolfram/alpha/WAAssumption;->getCount()I

    move-result v6

    .line 189
    .local v6, numValues:I
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/AssumptionsActivity;->getLayoutInflater()Lcom/wolfram/android/alpha/LayoutInflater_modified;

    move-result-object v10

    const v11, 0x7f030011

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/wolfram/android/alpha/LayoutInflater_modified;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 190
    .local v9, separatorLine:Landroid/view/View;
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 191
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 192
    .local v8, radioGroup:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ImageView;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v6, :cond_3

    .line 193
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/AssumptionsActivity;->getLayoutInflater()Lcom/wolfram/android/alpha/LayoutInflater_modified;

    move-result-object v10

    const v11, 0x7f030033

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/wolfram/android/alpha/LayoutInflater_modified;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 194
    .local v1, formulaButton:Landroid/view/ViewGroup;
    const v10, 0x7f0e003e

    invoke-virtual {v1, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/wolfram/alpha/WAAssumption;->getDescriptions()[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v4

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    const v10, 0x7f0e003f

    invoke-virtual {v1, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 196
    .local v7, radioButton:Landroid/widget/ImageView;
    invoke-interface {p1}, Lcom/wolfram/alpha/WAAssumption;->getCurrent()I

    move-result v10

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    if-ne v10, v4, :cond_2

    .line 197
    const v10, 0x7f0200ac

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 198
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 199
    const v10, 0x7f080008

    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7, v10, v11}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 205
    :goto_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "formula_variable"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/wolfram/android/alpha/activity/AssumptionsActivity;->formulaVariableViewIndex:I

    add-int/lit8 v12, v11, 0x1

    iput v12, p0, Lcom/wolfram/android/alpha/activity/AssumptionsActivity;->formulaVariableViewIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 206
    const v10, 0x7f080003

    invoke-interface {p1}, Lcom/wolfram/alpha/WAAssumption;->getInputs()[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v4

    invoke-virtual {v1, v10, v11}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 207
    const v10, 0x7f080007

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {p1}, Lcom/wolfram/alpha/WAAssumption;->getDescriptions()[Ljava/lang/String;

    move-result-object v12

    aget-object v12, v12, v4

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 208
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 209
    const/4 v10, 0x1

    sub-int v10, v6, v10

    if-ge v4, v10, :cond_1

    .line 210
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/AssumptionsActivity;->getLayoutInflater()Lcom/wolfram/android/alpha/LayoutInflater_modified;

    move-result-object v10

    const v11, 0x7f030011

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/wolfram/android/alpha/LayoutInflater_modified;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 211
    :cond_1
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 201
    :cond_2
    const v10, 0x7f0200ab

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 202
    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 203
    const v10, 0x7f080008

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v10, v11}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    goto :goto_2

    .line 214
    .end local v1           #formulaButton:Landroid/view/ViewGroup;
    .end local v7           #radioButton:Landroid/widget/ImageView;
    :cond_3
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 26
    .parameter "v"

    .prologue
    .line 228
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 230
    .local v6, bundle:Landroid/os/Bundle;
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    sput-object v23, Lcom/wolfram/android/alpha/activity/AssumptionsActivity;->assumptions_text_array:Ljava/util/ArrayList;

    .line 232
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/TextView;

    move/from16 v23, v0

    if-eqz v23, :cond_0

    .line 233
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 234
    .local v17, newAssumption:Ljava/lang/String;
    const-string v23, "com.wolfram.android.alpha.assumptioninput"

    move-object v0, v6

    move-object/from16 v1, v23

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    move-object/from16 v0, p1

    check-cast v0, Landroid/widget/TextView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/AssumptionsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0c0006

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_0

    .line 236
    sget-object v23, Lcom/wolfram/android/alpha/activity/AssumptionsActivity;->assumptions_text_array:Ljava/util/ArrayList;

    const v24, 0x7f080006

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    .end local v17           #newAssumption:Ljava/lang/String;
    :cond_0
    const v23, 0x7f0e0006

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/AssumptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    .line 241
    .local v21, topLevelView:Landroid/view/View;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .local v7, formulaVarInputs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 243
    .local v9, i:I
    :goto_0
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "formula_variable"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v8

    .line 245
    .local v8, formulaVariableView:Landroid/view/View;
    if-nez v8, :cond_1

    .line 271
    const-string v23, "com.wolfram.android.alpha.formulavars"

    move-object v0, v6

    move-object/from16 v1, v23

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 274
    const-string v23, "input_method"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/AssumptionsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/inputmethod/InputMethodManager;

    .line 275
    .local v12, imManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v23

    const/16 v24, 0x0

    move-object v0, v12

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 277
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 278
    .local v14, intent:Landroid/content/Intent;
    invoke-virtual {v14, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 279
    const/16 v23, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/wolfram/android/alpha/activity/AssumptionsActivity;->setResult(ILandroid/content/Intent;)V

    .line 280
    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/AssumptionsActivity;->finish()V

    .line 281
    return-void

    .line 249
    .end local v12           #imManager:Landroid/view/inputmethod/InputMethodManager;
    .end local v14           #intent:Landroid/content/Intent;
    :cond_1
    const v23, 0x7f0e003f

    move-object v0, v8

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .line 250
    .local v20, radioButton:Landroid/view/View;
    if-nez v20, :cond_4

    .line 251
    const v23, 0x7f080003

    move-object v0, v8

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 252
    .local v19, oldAssumptionInput:Ljava/lang/String;
    move-object v0, v8

    instance-of v0, v0, Landroid/widget/EditText;

    move/from16 v23, v0

    if-eqz v23, :cond_5

    .line 253
    move-object v0, v8

    check-cast v0, Landroid/widget/TextView;

    move-object v10, v0

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    .line 254
    .local v22, userText:Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_5

    .line 255
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getQueryResult()Lcom/wolfram/alpha/WAQueryResult;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Lcom/wolfram/alpha/WAQueryResult;->getAssumptions()[Lcom/wolfram/alpha/WAAssumption;

    move-result-object v3

    .local v3, arr$:[Lcom/wolfram/alpha/WAAssumption;
    array-length v15, v3

    .local v15, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    move v11, v10

    .end local v3           #arr$:[Lcom/wolfram/alpha/WAAssumption;
    .end local v10           #i$:I
    .end local v15           #len$:I
    .local v11, i$:I
    :goto_1
    if-ge v11, v15, :cond_5

    aget-object v5, v3, v11

    .line 256
    .local v5, assumption_WA:Lcom/wolfram/alpha/WAAssumption;
    invoke-interface {v5}, Lcom/wolfram/alpha/WAAssumption;->getInputs()[Ljava/lang/String;

    move-result-object v4

    .local v4, arr$:[Ljava/lang/String;
    move-object v0, v4

    array-length v0, v0

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v10, 0x0

    .end local v5           #assumption_WA:Lcom/wolfram/alpha/WAAssumption;
    .end local v11           #i$:I
    .restart local v10       #i$:I
    :goto_2
    move v0, v10

    move/from16 v1, v16

    if-ge v0, v1, :cond_3

    aget-object v13, v4, v10

    .line 257
    .local v13, input_WA:Ljava/lang/String;
    const-string v23, "_"

    move-object v0, v13

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const-string v24, "_"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    aget-object v24, v24, v25

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    const-string v23, "_"

    move-object v0, v13

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    aget-object v23, v23, v24

    invoke-static/range {v22 .. v22}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_2

    .line 258
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "_"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    aget-object v24, v24, v25

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "_"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static/range {v22 .. v22}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 259
    .local v18, newInput:Ljava/lang/String;
    move-object v0, v7

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    sget-object v23, Lcom/wolfram/android/alpha/activity/AssumptionsActivity;->assumptions_text_array:Ljava/util/ArrayList;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const v25, 0x7f080005

    move-object v0, v8

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ": "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    .end local v18           #newInput:Ljava/lang/String;
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 255
    .end local v13           #input_WA:Ljava/lang/String;
    :cond_3
    add-int/lit8 v10, v11, 0x1

    move v11, v10

    .end local v10           #i$:I
    .restart local v11       #i$:I
    goto/16 :goto_1

    .line 266
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v11           #i$:I
    .end local v16           #len$:I
    .end local v19           #oldAssumptionInput:Ljava/lang/String;
    .end local v22           #userText:Ljava/lang/String;
    :cond_4
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v23

    sget-object v24, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_5

    const v23, 0x7f080008

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v23

    sget-object v24, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_5

    .line 267
    const v23, 0x7f080003

    move-object v0, v8

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    sget-object v23, Lcom/wolfram/android/alpha/activity/AssumptionsActivity;->assumptions_text_array:Ljava/util/ArrayList;

    const v24, 0x7f080007

    move-object v0, v8

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 26
    .parameter "savedInstanceState"

    .prologue
    .line 76
    invoke-super/range {p0 .. p1}, Lcom/wolfram/android/alpha/activity/Activity_modified;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/AssumptionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 79
    .local v8, bundle:Landroid/os/Bundle;
    const-string v23, "is_formula"

    move-object v0, v8

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 82
    .local v13, isFormulaActivity:Z
    const v23, 0x7f03000a

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/AssumptionsActivity;->setContentView(I)V

    .line 85
    if-eqz v13, :cond_0

    .line 86
    const v23, 0x7f0e0004

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/AssumptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 87
    .local v20, titleView:Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/AssumptionsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0c0005

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    const v23, 0x7f0e0005

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/AssumptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    .line 93
    .end local v20           #titleView:Landroid/widget/TextView;
    :cond_0
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getQueryResult()Lcom/wolfram/alpha/WAQueryResult;

    move-result-object v18

    .line 94
    .local v18, queryResult:Lcom/wolfram/alpha/WAQueryResult;
    if-nez v18, :cond_2

    .line 160
    .end local p1
    :cond_1
    return-void

    .line 97
    .restart local p1
    :cond_2
    const v23, 0x7f0e0006

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/AssumptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 99
    .local v6, assumptionChoicesPanel:Landroid/widget/LinearLayout;
    new-instance v17, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v23, -0x1

    const/16 v24, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 101
    .local v17, paramsToSeparateChoicesViews:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v23, 0x14

    move/from16 v0, v23

    move-object/from16 v1, v17

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 103
    invoke-interface/range {v18 .. v18}, Lcom/wolfram/alpha/WAQueryResult;->getAssumptions()[Lcom/wolfram/alpha/WAAssumption;

    move-result-object v4

    .local v4, arr$:[Lcom/wolfram/alpha/WAAssumption;
    array-length v15, v4

    .local v15, len$:I
    const/4 v11, 0x0

    .end local p1
    .local v11, i$:I
    :goto_0
    if-ge v11, v15, :cond_1

    aget-object v5, v4, v11

    .line 104
    .local v5, assumption:Lcom/wolfram/alpha/WAAssumption;
    invoke-interface {v5}, Lcom/wolfram/alpha/WAAssumption;->getType()Ljava/lang/String;

    move-result-object v21

    .line 105
    .local v21, type:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/wolfram/android/alpha/activity/AssumptionsActivity;->assumptionTypeToTypeCode(Ljava/lang/String;)I

    move-result v22

    .line 106
    .local v22, typeCode:I
    invoke-interface {v5}, Lcom/wolfram/alpha/WAAssumption;->getInputs()[Ljava/lang/String;

    move-result-object v12

    .line 109
    .local v12, inputs:[Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/wolfram/android/alpha/activity/AssumptionsActivity;->isFormulaAssumption(I)Z

    move-result v23

    move v0, v13

    move/from16 v1, v23

    if-eq v0, v1, :cond_4

    .line 103
    :cond_3
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 113
    :cond_4
    const/16 v23, 0x67

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    .line 114
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/AssumptionsActivity;->handleFormulaVariable(Lcom/wolfram/alpha/WAAssumption;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 157
    .local v7, assumptionChoicesView:Landroid/widget/LinearLayout;
    :cond_5
    :goto_2
    if-eqz v7, :cond_3

    .line 158
    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 116
    .end local v7           #assumptionChoicesView:Landroid/widget/LinearLayout;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/AssumptionsActivity;->getLayoutInflater()Lcom/wolfram/android/alpha/LayoutInflater_modified;

    move-result-object v23

    const v24, 0x7f030006

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Lcom/wolfram/android/alpha/LayoutInflater_modified;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 118
    .restart local v7       #assumptionChoicesView:Landroid/widget/LinearLayout;
    const v23, 0x7f0e0001

    move-object v0, v7

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 119
    .local v9, firstButton:Landroid/widget/TextView;
    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object v0, v5

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/wolfram/android/alpha/activity/AssumptionsActivity;->formatAssumptionString(Lcom/wolfram/alpha/WAAssumption;IIZ)Ljava/lang/String;

    move-result-object v23

    move-object v0, v9

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    const/16 v23, 0x0

    aget-object v23, v12, v23

    move-object v0, v9

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 121
    const v23, 0x7f080006

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object v0, v9

    move/from16 v1, v23

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 123
    const/16 v23, 0x69

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    .line 126
    const/16 v23, 0x1

    move-object v0, v9

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 127
    move-object v0, v9

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    move-object v0, v12

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_9

    .line 129
    const v23, 0x7f0200b2

    move-object v0, v9

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 134
    :cond_7
    :goto_3
    move-object v0, v12

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_8

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/AssumptionsActivity;->getLayoutInflater()Lcom/wolfram/android/alpha/LayoutInflater_modified;

    move-result-object v23

    const v24, 0x7f030011

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Lcom/wolfram/android/alpha/LayoutInflater_modified;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    .line 136
    .local v19, separatorLine:Landroid/view/View;
    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 138
    .end local v19           #separatorLine:Landroid/view/View;
    :cond_8
    const/4 v10, 0x1

    .local v10, i:I
    :goto_4
    move-object v0, v12

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x1

    sub-int v23, v23, v24

    move v0, v10

    move/from16 v1, v23

    if-ge v0, v1, :cond_a

    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/AssumptionsActivity;->getLayoutInflater()Lcom/wolfram/android/alpha/LayoutInflater_modified;

    move-result-object v23

    const v24, 0x7f030004

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Lcom/wolfram/android/alpha/LayoutInflater_modified;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 140
    .local v16, middleButton:Landroid/widget/TextView;
    const/16 v23, 0x0

    move-object v0, v5

    move/from16 v1, v22

    move v2, v10

    move/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lcom/wolfram/android/alpha/activity/AssumptionsActivity;->formatAssumptionString(Lcom/wolfram/alpha/WAAssumption;IIZ)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    aget-object v23, v12, v10

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 142
    const v23, 0x7f080006

    const/16 v24, 0x1

    move-object v0, v5

    move/from16 v1, v22

    move v2, v10

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/wolfram/android/alpha/activity/AssumptionsActivity;->formatAssumptionString(Lcom/wolfram/alpha/WAAssumption;IIZ)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v16

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 144
    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/AssumptionsActivity;->getLayoutInflater()Lcom/wolfram/android/alpha/LayoutInflater_modified;

    move-result-object v23

    const v24, 0x7f030011

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Lcom/wolfram/android/alpha/LayoutInflater_modified;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v23

    move-object v0, v7

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 138
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 131
    .end local v10           #i:I
    .end local v16           #middleButton:Landroid/widget/TextView;
    :cond_9
    const v23, 0x7f0200c7

    move-object v0, v9

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_3

    .line 147
    .restart local v10       #i:I
    :cond_a
    move-object v0, v12

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_5

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/AssumptionsActivity;->getLayoutInflater()Lcom/wolfram/android/alpha/LayoutInflater_modified;

    move-result-object v23

    const v24, 0x7f030004

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Lcom/wolfram/android/alpha/LayoutInflater_modified;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 149
    .local v14, lastButton:Landroid/widget/TextView;
    move-object v0, v12

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x1

    sub-int v23, v23, v24

    const/16 v24, 0x0

    move-object v0, v5

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/wolfram/android/alpha/activity/AssumptionsActivity;->formatAssumptionString(Lcom/wolfram/alpha/WAAssumption;IIZ)Ljava/lang/String;

    move-result-object v23

    move-object v0, v14

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    move-object v0, v12

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x1

    sub-int v23, v23, v24

    aget-object v23, v12, v23

    move-object v0, v14

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 151
    const v23, 0x7f080006

    move-object v0, v12

    array-length v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    sub-int v24, v24, v25

    const/16 v25, 0x1

    move-object v0, v5

    move/from16 v1, v22

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/wolfram/android/alpha/activity/AssumptionsActivity;->formatAssumptionString(Lcom/wolfram/alpha/WAAssumption;IIZ)Ljava/lang/String;

    move-result-object v24

    move-object v0, v14

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 153
    invoke-virtual {v7, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2
.end method

.method public onFormulaChoiceClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 288
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 290
    .local v2, radioGroup:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ImageView;>;"
    if-eqz v2, :cond_0

    .line 291
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 292
    .local v1, radioButton:Landroid/widget/ImageView;
    const v3, 0x7f0200ab

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 293
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 297
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #radioButton:Landroid/widget/ImageView;
    :cond_0
    const v3, 0x7f0e003f

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 299
    .restart local v1       #radioButton:Landroid/widget/ImageView;
    if-eqz v1, :cond_1

    .line 300
    const v3, 0x7f0200ac

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 301
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 303
    :cond_1
    return-void
.end method
