.class Lcom/adobe/air/AndroidStageText$RestrictFilter;
.super Ljava/lang/Object;
.source "AndroidStageText.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/air/AndroidStageText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestrictFilter"
.end annotation


# static fields
.field private static final kMapSize:I = 0x2000


# instance fields
.field private mPattern:Ljava/lang/String;

.field private m_map:[B

.field final synthetic this$0:Lcom/adobe/air/AndroidStageText;


# direct methods
.method public constructor <init>(Lcom/adobe/air/AndroidStageText;Ljava/lang/String;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 1122
    iput-object p1, p0, Lcom/adobe/air/AndroidStageText$RestrictFilter;->this$0:Lcom/adobe/air/AndroidStageText;

    .line 1123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1116
    iput-object v0, p0, Lcom/adobe/air/AndroidStageText$RestrictFilter;->mPattern:Ljava/lang/String;

    .line 1117
    iput-object v0, p0, Lcom/adobe/air/AndroidStageText$RestrictFilter;->m_map:[B

    .line 1124
    iput-object p2, p0, Lcom/adobe/air/AndroidStageText$RestrictFilter;->mPattern:Ljava/lang/String;

    .line 1125
    if-eqz p2, :cond_6

    .line 1127
    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1129
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/adobe/air/AndroidStageText$RestrictFilter;->m_map:[B

    .line 1130
    invoke-virtual {p0, v1}, Lcom/adobe/air/AndroidStageText$RestrictFilter;->SetAll(Z)V

    .line 1135
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x5e

    if-ne v0, v2, :cond_0

    .line 1138
    invoke-virtual {p0, v4}, Lcom/adobe/air/AndroidStageText$RestrictFilter;->SetAll(Z)V

    :cond_0
    move v0, v1

    move v2, v1

    move v3, v4

    move v5, v1

    move v6, v1

    .line 1140
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v0, v7, :cond_6

    .line 1142
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 1144
    if-nez v6, :cond_2

    .line 1146
    sparse-switch v7, :sswitch_data_0

    move v8, v4

    .line 1169
    :goto_1
    if-eqz v8, :cond_4

    .line 1170
    if-eqz v5, :cond_5

    .line 1171
    :goto_2
    if-gt v2, v7, :cond_3

    .line 1172
    invoke-virtual {p0, v2, v3}, Lcom/adobe/air/AndroidStageText$RestrictFilter;->SetCode(CZ)V

    .line 1171
    add-int/lit8 v2, v2, 0x1

    int-to-char v2, v2

    goto :goto_2

    :sswitch_0
    move v8, v1

    move v5, v4

    .line 1149
    goto :goto_1

    .line 1151
    :sswitch_1
    if-nez v3, :cond_1

    move v3, v4

    :goto_3
    move v8, v1

    .line 1152
    goto :goto_1

    :cond_1
    move v3, v1

    .line 1151
    goto :goto_3

    :sswitch_2
    move v8, v1

    move v6, v4

    .line 1156
    goto :goto_1

    :cond_2
    move v8, v4

    move v6, v1

    .line 1167
    goto :goto_1

    :cond_3
    move v2, v1

    move v5, v1

    .line 1140
    :cond_4
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1177
    :cond_5
    invoke-virtual {p0, v7, v3}, Lcom/adobe/air/AndroidStageText$RestrictFilter;->SetCode(CZ)V

    move v2, v7

    .line 1178
    goto :goto_4

    .line 1184
    :cond_6
    return-void

    .line 1146
    nop

    :sswitch_data_0
    .sparse-switch
        0x2d -> :sswitch_0
        0x5c -> :sswitch_2
        0x5e -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method IsCharAvailable(C)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1238
    .line 1239
    iget-object v2, p0, Lcom/adobe/air/AndroidStageText$RestrictFilter;->mPattern:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1242
    :cond_0
    iget-object v2, p0, Lcom/adobe/air/AndroidStageText$RestrictFilter;->m_map:[B

    if-nez v2, :cond_1

    .line 1251
    :goto_0
    return v1

    .line 1248
    :cond_1
    iget-object v2, p0, Lcom/adobe/air/AndroidStageText$RestrictFilter;->m_map:[B

    shr-int/lit8 v3, p1, 0x3

    aget-byte v2, v2, v3

    and-int/lit8 v3, p1, 0x7

    shl-int v3, v0, v3

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method IsEmpty()Z
    .locals 1

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$RestrictFilter;->mPattern:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method SetAll(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1265
    if-eqz p1, :cond_0

    const/16 v0, 0xff

    :goto_0
    int-to-byte v0, v0

    .line 1266
    :goto_1
    const/16 v2, 0x2000

    if-ge v1, v2, :cond_1

    .line 1268
    iget-object v2, p0, Lcom/adobe/air/AndroidStageText$RestrictFilter;->m_map:[B

    aput-byte v0, v2, v1

    .line 1266
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    .line 1265
    goto :goto_0

    .line 1270
    :cond_1
    return-void
.end method

.method SetCode(CZ)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 1256
    if-eqz p2, :cond_0

    .line 1257
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$RestrictFilter;->m_map:[B

    shr-int/lit8 v1, p1, 0x3

    aget-byte v2, v0, v1

    and-int/lit8 v3, p1, 0x7

    shl-int v3, v4, v3

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1261
    :goto_0
    return-void

    .line 1259
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$RestrictFilter;->m_map:[B

    shr-int/lit8 v1, p1, 0x3

    aget-byte v2, v0, v1

    and-int/lit8 v3, p1, 0x7

    shl-int v3, v4, v3

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_0
.end method

.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$RestrictFilter;->mPattern:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1191
    const/4 v0, 0x0

    .line 1228
    :goto_0
    return-object v0

    .line 1193
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$RestrictFilter;->m_map:[B

    if-nez v0, :cond_1

    .line 1195
    const-string v0, ""

    goto :goto_0

    .line 1199
    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    sub-int v0, p3, p2

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1200
    :goto_1
    if-ge p2, p3, :cond_6

    .line 1202
    const/4 v1, 0x1

    .line 1203
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1204
    invoke-virtual {p0, v0}, Lcom/adobe/air/AndroidStageText$RestrictFilter;->IsCharAvailable(C)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1210
    const/16 v1, 0x41

    if-lt v0, v1, :cond_4

    const/16 v1, 0x5a

    if-gt v0, v1, :cond_4

    .line 1211
    add-int/lit8 v0, v0, 0x20

    int-to-char v0, v0

    .line 1212
    invoke-virtual {p0, v0}, Lcom/adobe/air/AndroidStageText$RestrictFilter;->IsCharAvailable(C)Z

    move-result v1

    .line 1220
    :cond_2
    :goto_2
    if-eqz v1, :cond_3

    .line 1222
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1200
    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 1213
    :cond_4
    const/16 v1, 0x61

    if-lt v0, v1, :cond_5

    const/16 v1, 0x7a

    if-gt v0, v1, :cond_5

    .line 1214
    add-int/lit8 v0, v0, -0x20

    int-to-char v0, v0

    .line 1215
    invoke-virtual {p0, v0}, Lcom/adobe/air/AndroidStageText$RestrictFilter;->IsCharAvailable(C)Z

    move-result v1

    goto :goto_2

    .line 1217
    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    .line 1225
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method