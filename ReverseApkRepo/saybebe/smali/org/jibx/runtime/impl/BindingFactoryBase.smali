.class public abstract Lorg/jibx/runtime/impl/BindingFactoryBase;
.super Ljava/lang/Object;
.source "BindingFactoryBase.java"

# interfaces
.implements Lorg/jibx/runtime/IBindingFactory;


# static fields
.field private static final EMPTY_INT_ARRAY:[I

.field static class$org$jibx$runtime$impl$BindingFactoryBase:Ljava/lang/Class;


# instance fields
.field private final m_abstractMappingDetails:[[Ljava/lang/String;

.field private final m_abstractMappingNamespaces:[[I

.field private final m_baseHashes:Ljava/lang/String;

.field private final m_baseNames:[Ljava/lang/String;

.field private final m_bindingClasses:[Ljava/lang/String;

.field private m_bindingClassesClosure:[Ljava/lang/String;

.field private final m_bindingFactories:[Ljava/lang/String;

.field private final m_bindingName:Ljava/lang/String;

.field private final m_bindingNamespaceTables:Ljava/util/Map;

.field private final m_classIndexMap:Lorg/jibx/runtime/impl/StringIntHashMap;

.field private final m_globalNames:[Ljava/lang/String;

.field private final m_globalUris:[Ljava/lang/String;

.field private final m_hash:I

.field private final m_idClassNames:[Ljava/lang/String;

.field private final m_majorVersion:I

.field private final m_mapNames:[Ljava/lang/String;

.field private final m_marshallerClasses:[Ljava/lang/Class;

.field private final m_marshallers:[Ljava/lang/String;

.field private final m_minorVersion:I

.field private final m_prefixes:[Ljava/lang/String;

.field private m_unmarshalMap:Ljava/util/Map;

.field private final m_unmarshallerClasses:[Ljava/lang/Class;

.field private final m_unmarshallers:[Ljava/lang/String;

.field private final m_uris:[Ljava/lang/String;

.field private m_verified:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lorg/jibx/runtime/impl/BindingFactoryBase;->EMPTY_INT_ARRAY:[I

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 20
    .parameter "name"
    .parameter "majorver"
    .parameter "minorver"
    .parameter "boundnames"
    .parameter "mappednames"
    .parameter "umarnames"
    .parameter "marnames"
    .parameter "uris"
    .parameter "prefixes"
    .parameter "gmapnames"
    .parameter "gmapuris"
    .parameter "idclasses"
    .parameter "abmapdetails"
    .parameter "abmapnss"
    .parameter "prenames"
    .parameter "prefacts"
    .parameter "prehashes"
    .parameter "prensmaps"

    .prologue
    .line 110
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 111
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_bindingName:Ljava/lang/String;

    .line 112
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_majorVersion:I

    .line 113
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_minorVersion:I

    .line 114
    invoke-static/range {p4 .. p4}, Lorg/jibx/runtime/impl/RuntimeSupport;->splitClassNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_bindingClasses:[Ljava/lang/String;

    .line 115
    invoke-static/range {p5 .. p5}, Lorg/jibx/runtime/impl/RuntimeSupport;->splitClassNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_mapNames:[Ljava/lang/String;

    .line 116
    new-instance v16, Lorg/jibx/runtime/impl/StringIntHashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_mapNames:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    const-wide v18, 0x3fb999999999999aL

    invoke-direct/range {v16 .. v19}, Lorg/jibx/runtime/impl/StringIntHashMap;-><init>(ID)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_classIndexMap:Lorg/jibx/runtime/impl/StringIntHashMap;

    .line 117
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_mapNames:[Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v8, v0, :cond_0

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_classIndexMap:Lorg/jibx/runtime/impl/StringIntHashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_mapNames:[Ljava/lang/String;

    move-object/from16 v17, v0

    aget-object v17, v17, v8

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Lorg/jibx/runtime/impl/StringIntHashMap;->add(Ljava/lang/String;I)I

    .line 117
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 120
    :cond_0
    if-nez p7, :cond_1

    .line 121
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_marshallers:[Ljava/lang/String;

    .line 122
    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_marshallerClasses:[Ljava/lang/Class;

    .line 127
    :goto_1
    if-nez p6, :cond_2

    .line 128
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_unmarshallers:[Ljava/lang/String;

    .line 129
    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_unmarshallerClasses:[Ljava/lang/Class;

    .line 134
    :goto_2
    move-object/from16 v0, p8

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_uris:[Ljava/lang/String;

    .line 135
    move-object/from16 v0, p9

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_prefixes:[Ljava/lang/String;

    .line 136
    invoke-static/range {p10 .. p10}, Lorg/jibx/runtime/impl/RuntimeSupport;->splitNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_globalNames:[Ljava/lang/String;

    .line 137
    move-object/from16 v0, p11

    move-object/from16 v1, p8

    invoke-static {v0, v1}, Lorg/jibx/runtime/impl/RuntimeSupport;->expandNamespaces(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_globalUris:[Ljava/lang/String;

    .line 138
    move-object/from16 v0, p12

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_idClassNames:[Ljava/lang/String;

    .line 139
    invoke-static/range {p13 .. p13}, Lorg/jibx/runtime/impl/RuntimeSupport;->splitClassNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 140
    .local v12, names:[Ljava/lang/String;
    array-length v0, v12

    move/from16 v16, v0

    div-int/lit8 v2, v16, 0xb

    .line 141
    .local v2, abmapcount:I
    const/16 v16, 0xb

    move/from16 v0, v16

    new-array v6, v0, [[Ljava/lang/String;

    .line 142
    .local v6, details:[[Ljava/lang/String;
    const/4 v8, 0x0

    :goto_3
    const/16 v16, 0xb

    move/from16 v0, v16

    if-ge v8, v0, :cond_3

    .line 143
    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v6, v8

    .line 142
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 124
    .end local v2           #abmapcount:I
    .end local v6           #details:[[Ljava/lang/String;
    .end local v12           #names:[Ljava/lang/String;
    :cond_1
    invoke-static/range {p7 .. p7}, Lorg/jibx/runtime/impl/RuntimeSupport;->splitClassNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_marshallers:[Ljava/lang/String;

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_marshallers:[Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_marshallerClasses:[Ljava/lang/Class;

    goto/16 :goto_1

    .line 131
    :cond_2
    invoke-static/range {p6 .. p6}, Lorg/jibx/runtime/impl/RuntimeSupport;->splitClassNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_unmarshallers:[Ljava/lang/String;

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_unmarshallers:[Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_unmarshallerClasses:[Ljava/lang/Class;

    goto/16 :goto_2

    .line 145
    .restart local v2       #abmapcount:I
    .restart local v6       #details:[[Ljava/lang/String;
    .restart local v12       #names:[Ljava/lang/String;
    :cond_3
    const/4 v8, 0x0

    :goto_4
    array-length v0, v12

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v8, v0, :cond_4

    .line 146
    rem-int/lit8 v16, v8, 0xb

    aget-object v16, v6, v16

    div-int/lit8 v17, v8, 0xb

    aget-object v18, v12, v8

    aput-object v18, v16, v17

    .line 145
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 148
    :cond_4
    move-object/from16 v0, p0

    iput-object v6, v0, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_abstractMappingDetails:[[Ljava/lang/String;

    .line 149
    new-array v13, v2, [[I

    .line 150
    .local v13, nss:[[I
    const/4 v3, 0x0

    .line 151
    .local v3, base:I
    const/4 v8, 0x0

    move v4, v3

    .end local v3           #base:I
    .local v4, base:I
    :goto_5
    if-ge v8, v2, :cond_7

    .line 152
    add-int/lit8 v3, v4, 0x1

    .end local v4           #base:I
    .restart local v3       #base:I
    move-object/from16 v0, p14

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 153
    .local v11, length:I
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v11, v0, :cond_5

    .line 154
    sget-object v16, Lorg/jibx/runtime/impl/BindingFactoryBase;->EMPTY_INT_ARRAY:[I

    aput-object v16, v13, v8

    .line 151
    :goto_6
    add-int/lit8 v8, v8, 0x1

    move v4, v3

    .end local v3           #base:I
    .restart local v4       #base:I
    goto :goto_5

    .line 156
    .end local v4           #base:I
    .restart local v3       #base:I
    :cond_5
    add-int/lit8 v11, v11, -0x1

    new-array v9, v11, [I

    .line 157
    .local v9, indexes:[I
    const/4 v10, 0x0

    .local v10, j:I
    :goto_7
    if-ge v10, v11, :cond_6

    .line 158
    add-int v16, v3, v10

    move-object/from16 v0, p14

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v16

    add-int/lit8 v16, v16, -0x1

    aput v16, v9, v10

    .line 157
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 160
    :cond_6
    add-int/2addr v3, v11

    .line 161
    aput-object v9, v13, v8

    goto :goto_6

    .line 164
    .end local v3           #base:I
    .end local v9           #indexes:[I
    .end local v10           #j:I
    .end local v11           #length:I
    .restart local v4       #base:I
    :cond_7
    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_abstractMappingNamespaces:[[I

    .line 165
    invoke-static/range {p15 .. p15}, Lorg/jibx/runtime/impl/RuntimeSupport;->splitNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_baseNames:[Ljava/lang/String;

    .line 166
    move-object/from16 v0, p17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_baseHashes:Ljava/lang/String;

    .line 167
    invoke-static/range {p16 .. p16}, Lorg/jibx/runtime/impl/RuntimeSupport;->splitClassNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_bindingFactories:[Ljava/lang/String;

    .line 168
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 169
    .local v15, tablemap:Ljava/util/Map;
    const/4 v8, 0x0

    :goto_8
    move-object/from16 v0, p18

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v8, v0, :cond_9

    .line 170
    aget-object v5, p18, v8

    .line 171
    .local v5, blob:Ljava/lang/String;
    if-eqz v5, :cond_8

    .line 172
    invoke-static {v5}, Lorg/jibx/runtime/impl/RuntimeSupport;->splitInts(Ljava/lang/String;)[I

    move-result-object v9

    .line 173
    .restart local v9       #indexes:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_bindingFactories:[Ljava/lang/String;

    move-object/from16 v16, v0

    aget-object v16, v16, v8

    move-object/from16 v0, v16

    invoke-interface {v15, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .end local v9           #indexes:[I
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 176
    .end local v5           #blob:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_bindingNamespaceTables:Ljava/util/Map;

    .line 179
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v16

    add-int v16, v16, p2

    add-int v16, v16, p3

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->hashCode()I

    move-result v17

    add-int v16, v16, v17

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->hashCode()I

    move-result v17

    add-int v7, v16, v17

    .line 181
    .local v7, hash:I
    if-eqz p6, :cond_a

    .line 182
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->hashCode()I

    move-result v16

    add-int v7, v7, v16

    .line 184
    :cond_a
    if-eqz p7, :cond_b

    .line 185
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->hashCode()I

    move-result v16

    add-int v7, v7, v16

    .line 187
    :cond_b
    const/4 v8, 0x0

    :goto_9
    move-object/from16 v0, p8

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v8, v0, :cond_c

    .line 188
    aget-object v16, p8, v8

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->hashCode()I

    move-result v16

    add-int v7, v7, v16

    .line 187
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 190
    :cond_c
    if-eqz p9, :cond_e

    .line 191
    const/4 v8, 0x0

    :goto_a
    move-object/from16 v0, p9

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v8, v0, :cond_e

    .line 192
    aget-object v14, p9, v8

    .line 193
    .local v14, prefix:Ljava/lang/String;
    if-eqz v14, :cond_d

    .line 194
    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v16

    add-int v7, v7, v16

    .line 191
    :cond_d
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    .line 198
    .end local v14           #prefix:Ljava/lang/String;
    :cond_e
    invoke-virtual/range {p10 .. p10}, Ljava/lang/String;->hashCode()I

    move-result v16

    invoke-virtual/range {p11 .. p11}, Ljava/lang/String;->hashCode()I

    move-result v17

    add-int v16, v16, v17

    add-int v7, v7, v16

    .line 199
    if-eqz p12, :cond_f

    .line 200
    const/4 v8, 0x0

    :goto_b
    move-object/from16 v0, p12

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v8, v0, :cond_f

    .line 201
    aget-object v16, p12, v8

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->hashCode()I

    move-result v16

    add-int v7, v7, v16

    .line 200
    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    .line 204
    :cond_f
    invoke-virtual/range {p13 .. p13}, Ljava/lang/String;->hashCode()I

    move-result v16

    invoke-virtual/range {p14 .. p14}, Ljava/lang/String;->hashCode()I

    move-result v17

    add-int v16, v16, v17

    invoke-virtual/range {p15 .. p15}, Ljava/lang/String;->hashCode()I

    move-result v17

    add-int v16, v16, v17

    invoke-virtual/range {p16 .. p16}, Ljava/lang/String;->hashCode()I

    move-result v17

    add-int v16, v16, v17

    add-int v7, v7, v16

    .line 206
    move-object/from16 v0, p0

    iput v7, v0, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_hash:I

    .line 207
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .parameter "x0"

    .prologue
    .line 239
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, x1:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public createMarshallingContext()Lorg/jibx/runtime/IMarshallingContext;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 258
    new-instance v0, Lorg/jibx/runtime/impl/MarshallingContext;

    iget-object v1, p0, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_mapNames:[Ljava/lang/String;

    iget-object v2, p0, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_marshallers:[Ljava/lang/String;

    iget-object v3, p0, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_uris:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p0}, Lorg/jibx/runtime/impl/MarshallingContext;-><init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lorg/jibx/runtime/IBindingFactory;)V

    return-object v0
.end method

.method public createUnmarshallingContext()Lorg/jibx/runtime/IUnmarshallingContext;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 269
    new-instance v0, Lorg/jibx/runtime/impl/UnmarshallingContext;

    iget-object v1, p0, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_unmarshallers:[Ljava/lang/String;

    array-length v1, v1

    iget-object v2, p0, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_unmarshallers:[Ljava/lang/String;

    iget-object v3, p0, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_globalUris:[Ljava/lang/String;

    iget-object v4, p0, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_globalNames:[Ljava/lang/String;

    iget-object v5, p0, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_idClassNames:[Ljava/lang/String;

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lorg/jibx/runtime/impl/UnmarshallingContext;-><init>(I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lorg/jibx/runtime/IBindingFactory;)V

    return-object v0
.end method

.method public getAbstractMappingNamespaces(I)[I
    .locals 1
    .parameter "index"

    .prologue
    .line 406
    iget-object v0, p0, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_abstractMappingNamespaces:[[I

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getAbstractMappings()[[Ljava/lang/String;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_abstractMappingDetails:[[Ljava/lang/String;

    return-object v0
.end method

.method public getBaseBindingFactories()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_bindingFactories:[Ljava/lang/String;

    return-object v0
.end method

.method public getBaseBindings()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_baseNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getBindingClasses()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 323
    invoke-virtual {p0}, Lorg/jibx/runtime/impl/BindingFactoryBase;->verifyBaseBindings()V

    .line 324
    iget-object v0, p0, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_bindingClassesClosure:[Ljava/lang/String;

    return-object v0
.end method

.method public getBindingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_bindingName:Ljava/lang/String;

    return-object v0
.end method

.method public getClassIndexMap()Lorg/jibx/runtime/impl/StringIntHashMap;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_classIndexMap:Lorg/jibx/runtime/impl/StringIntHashMap;

    return-object v0
.end method

.method public getElementNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_globalNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getElementNamespaces()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_globalUris:[Ljava/lang/String;

    return-object v0
.end method

.method public getHash()I
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_hash:I

    return v0
.end method

.method public getMajorVersion()I
    .locals 1

    .prologue
    .line 300
    iget v0, p0, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_majorVersion:I

    return v0
.end method

.method public getMappedClasses()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_mapNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getMarshallerClass(I)Ljava/lang/Class;
    .locals 2
    .parameter "index"

    .prologue
    .line 566
    iget-object v1, p0, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_marshallerClasses:[Ljava/lang/Class;

    aget-object v0, v1, p1

    .line 567
    .local v0, clas:Ljava/lang/Class;
    if-nez v0, :cond_0

    .line 568
    iget-object v1, p0, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_marshallers:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {p0, v1}, Lorg/jibx/runtime/impl/BindingFactoryBase;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 570
    :cond_0
    return-object v0
.end method

.method public getMarshallerClasses()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_marshallers:[Ljava/lang/String;

    return-object v0
.end method

.method public getMinorVersion()I
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_minorVersion:I

    return v0
.end method

.method public getNamespaceTranslationTableMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_bindingNamespaceTables:Ljava/util/Map;

    return-object v0
.end method

.method public getNamespaces()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_uris:[Ljava/lang/String;

    return-object v0
.end method

.method public getPrefixes()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_prefixes:[Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getUnmarshalMap()Ljava/util/Map;
    .locals 10

    .prologue
    .line 530
    monitor-enter p0

    :try_start_0
    iget-object v8, p0, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_unmarshalMap:Ljava/util/Map;

    if-nez v8, :cond_4

    .line 531
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 532
    .local v4, map:Ljava/util/Map;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v8, p0, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_globalNames:[Ljava/lang/String;

    array-length v8, v8

    if-ge v1, v8, :cond_3

    .line 533
    iget-object v8, p0, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_globalNames:[Ljava/lang/String;

    aget-object v5, v8, v1

    .line 534
    .local v5, name:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 535
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 536
    .local v7, value:Ljava/lang/Object;
    instance-of v8, v7, Ljava/lang/Integer;

    if-eqz v8, :cond_1

    .line 537
    const/4 v8, 0x2

    new-array v2, v8, [I

    .line 538
    .local v2, ints:[I
    const/4 v8, 0x0

    check-cast v7, Ljava/lang/Integer;

    .end local v7           #value:Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v2, v8

    .line 539
    const/4 v8, 0x1

    aput v1, v2, v8

    .line 540
    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    .end local v2           #ints:[I
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 541
    .restart local v7       #value:Ljava/lang/Object;
    :cond_1
    instance-of v8, v7, [I

    if-eqz v8, :cond_2

    .line 542
    check-cast v7, [I

    .end local v7           #value:Ljava/lang/Object;
    move-object v0, v7

    check-cast v0, [I

    move-object v6, v0

    .line 543
    .local v6, olds:[I
    array-length v3, v6

    .line 544
    .local v3, length:I
    add-int/lit8 v8, v3, 0x1

    new-array v2, v8, [I

    .line 545
    .restart local v2       #ints:[I
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v6, v8, v2, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 546
    aput v1, v2, v3

    .line 547
    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 530
    .end local v1           #i:I
    .end local v2           #ints:[I
    .end local v3           #length:I
    .end local v4           #map:Ljava/util/Map;
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #olds:[I
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 549
    .restart local v1       #i:I
    .restart local v4       #map:Ljava/util/Map;
    .restart local v5       #name:Ljava/lang/String;
    .restart local v7       #value:Ljava/lang/Object;
    :cond_2
    :try_start_1
    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v4, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 553
    .end local v5           #name:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/Object;
    :cond_3
    iput-object v4, p0, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_unmarshalMap:Ljava/util/Map;

    .line 555
    .end local v1           #i:I
    .end local v4           #map:Ljava/util/Map;
    :cond_4
    iget-object v8, p0, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_unmarshalMap:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v8
.end method

.method public getUnmarshallerClass(I)Ljava/lang/Class;
    .locals 2
    .parameter "index"

    .prologue
    .line 581
    iget-object v1, p0, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_unmarshallerClasses:[Ljava/lang/Class;

    aget-object v0, v1, p1

    .line 582
    .local v0, clas:Ljava/lang/Class;
    if-nez v0, :cond_0

    .line 583
    iget-object v1, p0, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_unmarshallers:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {p0, v1}, Lorg/jibx/runtime/impl/BindingFactoryBase;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 585
    :cond_0
    return-object v0
.end method

.method public getUnmarshallerClasses()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_unmarshallers:[Ljava/lang/String;

    return-object v0
.end method

.method public loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 5
    .parameter "name"

    .prologue
    .line 221
    const/4 v0, 0x0

    .line 222
    .local v0, clas:Ljava/lang/Class;
    const/4 v2, 0x0

    .line 223
    .local v2, factldr:Ljava/lang/ClassLoader;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 225
    :try_start_0
    invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 227
    :goto_0
    if-nez v0, :cond_1

    .line 230
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 231
    .local v1, ctxldr:Ljava/lang/ClassLoader;
    if-eqz v1, :cond_0

    .line 233
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 236
    :cond_0
    :goto_1
    if-nez v0, :cond_1

    .line 239
    sget-object v4, Lorg/jibx/runtime/impl/BindingFactoryBase;->class$org$jibx$runtime$impl$BindingFactoryBase:Ljava/lang/Class;

    if-nez v4, :cond_2

    const-string v4, "org.jibx.runtime.impl.BindingFactoryBase"

    invoke-static {v4}, Lorg/jibx/runtime/impl/BindingFactoryBase;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lorg/jibx/runtime/impl/BindingFactoryBase;->class$org$jibx$runtime$impl$BindingFactoryBase:Ljava/lang/Class;

    :goto_2
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 240
    .local v3, thisldr:Ljava/lang/ClassLoader;
    if-eq v3, v2, :cond_1

    if-eq v3, v1, :cond_1

    .line 242
    :try_start_2
    invoke-virtual {v3, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 248
    .end local v1           #ctxldr:Ljava/lang/ClassLoader;
    .end local v3           #thisldr:Ljava/lang/ClassLoader;
    :cond_1
    :goto_3
    return-object v0

    .line 239
    .restart local v1       #ctxldr:Ljava/lang/ClassLoader;
    :cond_2
    sget-object v4, Lorg/jibx/runtime/impl/BindingFactoryBase;->class$org$jibx$runtime$impl$BindingFactoryBase:Ljava/lang/Class;

    goto :goto_2

    .line 226
    .end local v1           #ctxldr:Ljava/lang/ClassLoader;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 234
    .restart local v1       #ctxldr:Ljava/lang/ClassLoader;
    :catch_1
    move-exception v4

    goto :goto_1

    .line 243
    .restart local v3       #thisldr:Ljava/lang/ClassLoader;
    :catch_2
    move-exception v4

    goto :goto_3
.end method

.method public verifyBaseBindings()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    const/16 v14, 0x27

    .line 436
    iget-boolean v11, p0, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_verified:Z

    if-nez v11, :cond_0

    .line 437
    iget-object v11, p0, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_bindingFactories:[Ljava/lang/String;

    array-length v11, v11

    if-nez v11, :cond_1

    .line 438
    iget-object v11, p0, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_bindingClasses:[Ljava/lang/String;

    iput-object v11, p0, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_bindingClassesClosure:[Ljava/lang/String;

    .line 484
    :goto_0
    const/4 v11, 0x1

    iput-boolean v11, p0, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_verified:Z

    .line 486
    :cond_0
    return-void

    .line 442
    :cond_1
    new-instance v1, Lorg/jibx/runtime/impl/GrowableStringArray;

    invoke-direct {v1}, Lorg/jibx/runtime/impl/GrowableStringArray;-><init>()V

    .line 443
    .local v1, classes:Lorg/jibx/runtime/impl/GrowableStringArray;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    iget-object v11, p0, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_bindingFactories:[Ljava/lang/String;

    array-length v11, v11

    if-ge v7, v11, :cond_6

    .line 444
    iget-object v11, p0, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_bindingFactories:[Ljava/lang/String;

    aget-object v6, v11, v7

    .line 445
    .local v6, fname:Ljava/lang/String;
    invoke-virtual {p0, v6}, Lorg/jibx/runtime/impl/BindingFactoryBase;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 446
    .local v5, fclas:Ljava/lang/Class;
    if-nez v5, :cond_2

    .line 447
    new-instance v11, Lorg/jibx/runtime/JiBXException;

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "Unable to load precompiled base binding \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    iget-object v13, p0, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_baseNames:[Ljava/lang/String;

    aget-object v13, v13, v7

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v13, "\' used by binding \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {p0}, Lorg/jibx/runtime/impl/BindingFactoryBase;->getBindingName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 449
    :cond_2
    const/4 v3, 0x0

    .line 451
    .local v3, ex:Ljava/lang/Exception;
    :try_start_0
    const-string v11, "getInstance"

    sget-object v12, Lorg/jibx/runtime/BindingDirectory;->EMPTY_ARGS:[Ljava/lang/Class;

    invoke-virtual {v5, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 454
    .local v9, method:Ljava/lang/reflect/Method;
    const/4 v12, 0x0

    const/4 v11, 0x0

    check-cast v11, [Ljava/lang/Object;

    invoke-virtual {v9, v12, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 455
    .local v10, result:Ljava/lang/Object;
    instance-of v11, v10, Lorg/jibx/runtime/IBindingFactory;

    if-eqz v11, :cond_4

    .line 456
    move-object v0, v10

    check-cast v0, Lorg/jibx/runtime/IBindingFactory;

    move-object v4, v0

    .line 457
    .local v4, fact:Lorg/jibx/runtime/IBindingFactory;
    iget-object v11, p0, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_baseHashes:Ljava/lang/String;

    mul-int/lit8 v12, v7, 0x2

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    shl-int/lit8 v11, v11, 0x10

    iget-object v12, p0, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_baseHashes:Ljava/lang/String;

    mul-int/lit8 v13, v7, 0x2

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    add-int v8, v11, v12

    .line 459
    .local v8, match:I
    invoke-interface {v4}, Lorg/jibx/runtime/IBindingFactory;->getHash()I

    move-result v11

    if-eq v11, v8, :cond_3

    .line 460
    new-instance v11, Lorg/jibx/runtime/JiBXException;

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "Precompiled base binding \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    iget-object v13, p0, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_baseNames:[Ljava/lang/String;

    aget-object v13, v13, v7

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v13, "\' has changed since binding \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {p0}, Lorg/jibx/runtime/impl/BindingFactoryBase;->getBindingName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v13, "\' was compiled"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 467
    .end local v4           #fact:Lorg/jibx/runtime/IBindingFactory;
    .end local v8           #match:I
    .end local v9           #method:Ljava/lang/reflect/Method;
    .end local v10           #result:Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 468
    .local v2, e:Ljava/lang/IllegalAccessException;
    move-object v3, v2

    .line 476
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    :goto_2
    if-eqz v3, :cond_5

    .line 477
    new-instance v11, Lorg/jibx/runtime/JiBXException;

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "Error creating factory for precompiled base binding \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    iget-object v13, p0, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_baseNames:[Ljava/lang/String;

    aget-object v13, v13, v7

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v13, "\' used by binding \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {p0}, Lorg/jibx/runtime/impl/BindingFactoryBase;->getBindingName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v13, "\':"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 462
    .restart local v4       #fact:Lorg/jibx/runtime/IBindingFactory;
    .restart local v8       #match:I
    .restart local v9       #method:Ljava/lang/reflect/Method;
    .restart local v10       #result:Ljava/lang/Object;
    :cond_3
    :try_start_1
    invoke-interface {v4}, Lorg/jibx/runtime/IBindingFactory;->getBindingClasses()[Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lorg/jibx/runtime/impl/GrowableStringArray;->addAll([Ljava/lang/String;)V

    goto :goto_2

    .line 469
    .end local v4           #fact:Lorg/jibx/runtime/IBindingFactory;
    .end local v8           #match:I
    .end local v9           #method:Ljava/lang/reflect/Method;
    .end local v10           #result:Ljava/lang/Object;
    :catch_1
    move-exception v2

    .line 470
    .local v2, e:Ljava/lang/SecurityException;
    move-object v3, v2

    .line 475
    goto :goto_2

    .line 465
    .end local v2           #e:Ljava/lang/SecurityException;
    .restart local v9       #method:Ljava/lang/reflect/Method;
    .restart local v10       #result:Ljava/lang/Object;
    :cond_4
    new-instance v11, Lorg/jibx/runtime/JiBXException;

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "Classloader conflict for precompiled base binding \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    iget-object v13, p0, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_baseNames:[Ljava/lang/String;

    aget-object v13, v13, v7

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v13, "\' used by binding \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {p0}, Lorg/jibx/runtime/impl/BindingFactoryBase;->getBindingName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const/16 v13, 0x27

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    .line 471
    .end local v9           #method:Ljava/lang/reflect/Method;
    .end local v10           #result:Ljava/lang/Object;
    :catch_2
    move-exception v2

    .line 472
    .local v2, e:Ljava/lang/NoSuchMethodException;
    move-object v3, v2

    .line 475
    goto :goto_2

    .line 473
    .end local v2           #e:Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v2

    .line 474
    .local v2, e:Ljava/lang/reflect/InvocationTargetException;
    move-object v3, v2

    goto :goto_2

    .line 443
    .end local v2           #e:Ljava/lang/reflect/InvocationTargetException;
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 481
    .end local v3           #ex:Ljava/lang/Exception;
    .end local v5           #fclas:Ljava/lang/Class;
    .end local v6           #fname:Ljava/lang/String;
    :cond_6
    invoke-virtual {v1}, Lorg/jibx/runtime/impl/GrowableStringArray;->toArray()[Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lorg/jibx/runtime/impl/BindingFactoryBase;->m_bindingClassesClosure:[Ljava/lang/String;

    goto/16 :goto_0
.end method
