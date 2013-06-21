.class public Lorg/jibx/runtime/PrintInfo;
.super Ljava/lang/Object;
.source "PrintInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static listAbstracts(Lorg/jibx/runtime/IBindingFactory;Z)V
    .locals 11
    .parameter "factory"
    .parameter "verbose"

    .prologue
    const/4 v10, 0x0

    .line 296
    invoke-interface {p0}, Lorg/jibx/runtime/IBindingFactory;->getAbstractMappings()[[Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, abs:[[Ljava/lang/String;
    aget-object v8, v0, v10

    array-length v4, v8

    .line 298
    .local v4, length:I
    if-lez v4, :cond_c

    .line 299
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "Defines "

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 300
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8, v4}, Ljava/io/PrintStream;->print(I)V

    .line 301
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, " abstract mapping(s):"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 302
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_c

    .line 303
    const/4 v8, 0x1

    aget-object v8, v0, v8

    aget-object v1, v8, v2

    .line 304
    .local v1, cname:Ljava/lang/String;
    aget-object v8, v0, v10

    aget-object v7, v8, v2

    .line 305
    .local v7, tname:Ljava/lang/String;
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, " class "

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 306
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 307
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 308
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, " (type \""

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 309
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 310
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "\")"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 312
    :cond_0
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8}, Ljava/io/PrintStream;->println()V

    .line 313
    if-eqz p1, :cond_b

    .line 314
    invoke-interface {p0, v2}, Lorg/jibx/runtime/IBindingFactory;->getAbstractMappingNamespaces(I)[I

    move-result-object v6

    .line 315
    .local v6, nss:[I
    array-length v8, v6

    if-lez v8, :cond_2

    .line 316
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "  using namespace(s):"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 317
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    array-length v8, v6

    if-ge v3, v8, :cond_1

    .line 318
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 319
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget v9, v6, v3

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->print(I)V

    .line 317
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 321
    :cond_1
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8}, Ljava/io/PrintStream;->println()V

    .line 323
    .end local v3           #j:I
    :cond_2
    const/4 v8, 0x2

    aget-object v8, v0, v8

    aget-object v5, v8, v2

    .line 324
    .local v5, name:Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 325
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "  create method "

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 326
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 328
    :cond_3
    const/4 v8, 0x3

    aget-object v8, v0, v8

    aget-object v5, v8, v2

    .line 329
    if-eqz v5, :cond_4

    .line 330
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "  complete method "

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 331
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 333
    :cond_4
    const/4 v8, 0x4

    aget-object v8, v0, v8

    aget-object v5, v8, v2

    .line 334
    if-eqz v5, :cond_5

    .line 335
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "  prepare method "

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 336
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 338
    :cond_5
    const/4 v8, 0x5

    aget-object v8, v0, v8

    aget-object v5, v8, v2

    .line 339
    if-eqz v5, :cond_6

    .line 340
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "  attribute presence test method "

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 341
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 343
    :cond_6
    const/4 v8, 0x6

    aget-object v8, v0, v8

    aget-object v5, v8, v2

    .line 344
    if-eqz v5, :cond_7

    .line 345
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "  attribute unmarshal method "

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 346
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 348
    :cond_7
    const/4 v8, 0x7

    aget-object v8, v0, v8

    aget-object v5, v8, v2

    .line 349
    if-eqz v5, :cond_8

    .line 350
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "  attribute marshal method "

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 351
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 353
    :cond_8
    const/16 v8, 0x8

    aget-object v8, v0, v8

    aget-object v5, v8, v2

    .line 354
    if-eqz v5, :cond_9

    .line 355
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "  content presence test method "

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 356
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 358
    :cond_9
    const/16 v8, 0x9

    aget-object v8, v0, v8

    aget-object v5, v8, v2

    .line 359
    if-eqz v5, :cond_a

    .line 360
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "  content unmarshal method "

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 361
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 363
    :cond_a
    const/16 v8, 0xa

    aget-object v8, v0, v8

    aget-object v5, v8, v2

    .line 364
    if-eqz v5, :cond_b

    .line 365
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "  content marshal method "

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 366
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 302
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #nss:[I
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 371
    .end local v1           #cname:Ljava/lang/String;
    .end local v2           #i:I
    .end local v7           #tname:Ljava/lang/String;
    :cond_c
    return-void
.end method

.method private static listBaseBindings(Lorg/jibx/runtime/IBindingFactory;Z)V
    .locals 8
    .parameter "factory"
    .parameter "verbose"

    .prologue
    .line 265
    invoke-interface {p0}, Lorg/jibx/runtime/IBindingFactory;->getBaseBindings()[Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, bases:[Ljava/lang/String;
    array-length v6, v0

    if-lez v6, :cond_1

    .line 267
    invoke-interface {p0}, Lorg/jibx/runtime/IBindingFactory;->getBaseBindingFactories()[Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, factories:[Ljava/lang/String;
    invoke-interface {p0}, Lorg/jibx/runtime/IBindingFactory;->getNamespaceTranslationTableMap()Ljava/util/Map;

    move-result-object v5

    .line 269
    .local v5, xlatemap:Ljava/util/Map;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "Uses precompiled base binding(s):"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 270
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v6, v0

    if-ge v2, v6, :cond_1

    .line 271
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 272
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget-object v7, v0, v2

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 273
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, " with binding factory "

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 274
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget-object v7, v1, v2

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 275
    aget-object v6, v1, v2

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    move-object v4, v6

    check-cast v4, [I

    .line 276
    .local v4, xlate:[I
    if-eqz p1, :cond_0

    if-eqz v4, :cond_0

    .line 277
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "  namespace translations:"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 278
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 279
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    array-length v6, v4

    if-ge v3, v6, :cond_0

    .line 280
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(C)V

    .line 281
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget v7, v4, v3

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(I)V

    .line 279
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 284
    .end local v3           #j:I
    :cond_0
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6}, Ljava/io/PrintStream;->println()V

    .line 270
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 287
    .end local v1           #factories:[Ljava/lang/String;
    .end local v2           #i:I
    .end local v4           #xlate:[I
    .end local v5           #xlatemap:Ljava/util/Map;
    :cond_1
    return-void
.end method

.method private static listClasses(Lorg/jibx/runtime/IBindingFactory;Z)V
    .locals 12
    .parameter "factory"
    .parameter "verbose"

    .prologue
    .line 208
    invoke-interface {p0}, Lorg/jibx/runtime/IBindingFactory;->getMappedClasses()[Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, classes:[Ljava/lang/String;
    invoke-interface {p0}, Lorg/jibx/runtime/IBindingFactory;->getElementNames()[Ljava/lang/String;

    move-result-object v6

    .line 210
    .local v6, names:[Ljava/lang/String;
    invoke-interface {p0}, Lorg/jibx/runtime/IBindingFactory;->getElementNamespaces()[Ljava/lang/String;

    move-result-object v9

    .line 211
    .local v9, uris:[Ljava/lang/String;
    invoke-interface {p0}, Lorg/jibx/runtime/IBindingFactory;->getMarshallerClasses()[Ljava/lang/String;

    move-result-object v4

    .line 212
    .local v4, mars:[Ljava/lang/String;
    invoke-interface {p0}, Lorg/jibx/runtime/IBindingFactory;->getUnmarshallerClasses()[Ljava/lang/String;

    move-result-object v8

    .line 213
    .local v8, umars:[Ljava/lang/String;
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "Includes information for "

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 214
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    array-length v11, v1

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(I)V

    .line 215
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, " mapping(s):"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 216
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v10, v1

    if-ge v2, v10, :cond_8

    .line 217
    aget-object v0, v1, v2

    .line 218
    .local v0, clas:Ljava/lang/String;
    const/4 v5, 0x0

    .line 219
    .local v5, name:Ljava/lang/String;
    const/4 v3, 0x0

    .line 220
    .local v3, mar:Ljava/lang/String;
    if-eqz v4, :cond_0

    array-length v10, v4

    if-ge v2, v10, :cond_0

    .line 221
    aget-object v3, v4, v2

    .line 223
    :cond_0
    const/4 v7, 0x0

    .line 224
    .local v7, umar:Ljava/lang/String;
    if-eqz v8, :cond_1

    array-length v10, v8

    if-ge v2, v10, :cond_1

    .line 225
    aget-object v7, v8, v2

    .line 227
    :cond_1
    array-length v10, v6

    if-ge v2, v10, :cond_2

    aget-object v5, v6, v2

    if-nez v5, :cond_3

    :cond_2
    if-nez v3, :cond_3

    if-eqz v7, :cond_7

    .line 229
    :cond_3
    if-nez v5, :cond_6

    .line 230
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, " class "

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 231
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v10, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 232
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, " abstract mapping"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 240
    :goto_1
    if-eqz p1, :cond_5

    .line 241
    if-eqz v3, :cond_4

    .line 242
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "  marshaller class "

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 243
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v10, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 245
    :cond_4
    if-eqz v7, :cond_5

    .line 246
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "  unmarshaller class "

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 247
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v10, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 216
    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 234
    :cond_6
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, " class "

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 235
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v10, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 236
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, " mapped to element "

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 237
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget-object v11, v9, v2

    invoke-static {v11, v5}, Lorg/jibx/runtime/impl/UnmarshallingContext;->buildNameString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 250
    :cond_7
    if-eqz p1, :cond_5

    .line 251
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, " reference to class or type "

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 252
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v10, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 255
    .end local v0           #clas:Ljava/lang/String;
    .end local v3           #mar:Ljava/lang/String;
    .end local v5           #name:Ljava/lang/String;
    .end local v7           #umar:Ljava/lang/String;
    :cond_8
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 24
    .parameter "args"

    .prologue
    .line 47
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v22, "JiBX distribution "

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 48
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v22, "jibx_1_2_3"

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 49
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v22, ", version code "

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 50
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/high16 v22, 0x3

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 52
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v22, "\n(compatible with binding compiler version codes "

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 53
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v22, 0x3

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 55
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v22, "XXXX)"

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 56
    const/16 v19, 0x0

    .line 57
    .local v19, usage:Z
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v21, v0

    if-lez v21, :cond_12

    .line 60
    const/16 v20, 0x0

    .line 61
    .local v20, verbose:Z
    const/4 v3, 0x0

    .line 62
    .local v3, bname:Ljava/lang/String;
    const/4 v6, 0x0

    .line 63
    .local v6, cname:Ljava/lang/String;
    const/16 v16, 0x0

    .line 64
    .local v16, pname:Ljava/lang/String;
    const/4 v15, 0x0

    .local v15, offset:I
    :goto_0
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v15, v0, :cond_5

    .line 65
    aget-object v2, p0, v15

    .line 66
    .local v2, arg:Ljava/lang/String;
    const-string v21, "-v"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 67
    const/16 v20, 0x1

    .line 64
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 68
    :cond_0
    const-string v21, "-b"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 69
    add-int/lit8 v15, v15, 0x1

    aget-object v3, p0, v15

    goto :goto_1

    .line 70
    :cond_1
    const-string v21, "-c"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 71
    add-int/lit8 v15, v15, 0x1

    aget-object v6, p0, v15

    goto :goto_1

    .line 72
    :cond_2
    const-string v21, "-p"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 73
    add-int/lit8 v15, v15, 0x1

    aget-object v16, p0, v15

    goto :goto_1

    .line 75
    :cond_3
    const-string v21, "-?"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_4

    .line 76
    sget-object v21, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v22, "Unknown argument \'"

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 77
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 78
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v22, 0x27

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(C)V

    .line 80
    :cond_4
    const/16 v19, 0x1

    .line 84
    .end local v2           #arg:Ljava/lang/String;
    :cond_5
    if-nez v6, :cond_9

    .line 85
    if-eqz v3, :cond_8

    if-nez v16, :cond_8

    .line 86
    sget-object v21, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v22, "Binding name requires package name or class name."

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 87
    const/16 v19, 0x1

    .line 100
    :cond_6
    :goto_2
    if-eqz v19, :cond_b

    .line 101
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v22, "\nUsage: java org.jibx.runtime.PrintInfo [-b bname] [-c cname] [-p pname] [-v]\nwith the optional parameters:\n -b bname  gives a binding name\n -c cname  gives a class name\n -p pname  gives a package name, and\n -v        turns on verbose output\nIf none of the name arguments are supplied the program will just print the\nruntime version information and exit. If one or more of the name parameters are\nsupplied, it will attempt to find a binding and list the binding information.\nThe valid combinations of arguments are a fully-qualified class name by itself,\nwhen the class has a single binding; or a binding name along with either a class\nname or a package name. The target class or package must either be in the\nclasspath used for executing the program, or in the path from the current\ndirectory. The \'verbose\' flag controls the level of detail included in the\nlisting."

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 199
    .end local v3           #bname:Ljava/lang/String;
    .end local v6           #cname:Ljava/lang/String;
    .end local v15           #offset:I
    .end local v16           #pname:Ljava/lang/String;
    .end local v20           #verbose:Z
    :cond_7
    :goto_3
    return-void

    .line 88
    .restart local v3       #bname:Ljava/lang/String;
    .restart local v6       #cname:Ljava/lang/String;
    .restart local v15       #offset:I
    .restart local v16       #pname:Ljava/lang/String;
    .restart local v20       #verbose:Z
    :cond_8
    if-nez v3, :cond_6

    if-eqz v16, :cond_6

    .line 89
    sget-object v21, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v22, "Package name requires binding name."

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 90
    const/16 v19, 0x1

    goto :goto_2

    .line 92
    :cond_9
    if-eqz v16, :cond_6

    .line 93
    const/16 v21, 0x2e

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v21

    if-lez v21, :cond_a

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_a

    .line 94
    sget-object v21, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v22, "When class and package names are both provided, the class must be in the package"

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 95
    const/16 v19, 0x1

    goto :goto_2

    .line 97
    :cond_a
    new-instance v21, Ljava/lang/StringBuffer;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    const/16 v22, 0x2e

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 124
    :cond_b
    const/16 v21, 0x1

    :try_start_0
    move/from16 v0, v21

    new-array v0, v0, [Ljava/net/URL;

    move-object/from16 v18, v0

    const/16 v21, 0x0

    new-instance v22, Ljava/io/File;

    const-string v23, "."

    invoke-direct/range {v22 .. v23}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->toURL()Ljava/net/URL;

    move-result-object v22

    aput-object v22, v18, v21

    .line 125
    .local v18, urls:[Ljava/net/URL;
    new-instance v11, Ljava/net/URLClassLoader;

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Ljava/net/URLClassLoader;-><init>([Ljava/net/URL;)V

    .line 126
    .local v11, loader:Ljava/net/URLClassLoader;
    if-nez v6, :cond_e

    .line 127
    move-object/from16 v0, v16

    invoke-static {v3, v0, v11}, Lorg/jibx/runtime/BindingDirectory;->getFactory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lorg/jibx/runtime/IBindingFactory;

    move-result-object v9

    .line 138
    .local v9, factory:Lorg/jibx/runtime/IBindingFactory;
    :goto_4
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v22, "Found binding \'"

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 139
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v9}, Lorg/jibx/runtime/IBindingFactory;->getBindingName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 140
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v22, "\' "

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 141
    invoke-interface {v9}, Lorg/jibx/runtime/IBindingFactory;->getMajorVersion()I

    move-result v12

    .line 142
    .local v12, major:I
    invoke-interface {v9}, Lorg/jibx/runtime/IBindingFactory;->getMinorVersion()I

    move-result v13

    .line 143
    .local v13, minor:I
    if-nez v12, :cond_c

    if-eqz v13, :cond_d

    .line 144
    :cond_c
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v22, "(version "

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 145
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/io/PrintStream;->print(I)V

    .line 146
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v22, ", "

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 147
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/io/PrintStream;->print(I)V

    .line 148
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v22, ") "

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 150
    :cond_d
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual/range {v21 .. v21}, Ljava/io/PrintStream;->println()V

    .line 151
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v22, " compiled with JiBX distribution "

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 152
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v9}, Lorg/jibx/runtime/IBindingFactory;->getCompilerDistribution()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 153
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v22, ", version code "

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 154
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v9}, Lorg/jibx/runtime/IBindingFactory;->getCompilerVersion()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 156
    invoke-interface {v9}, Lorg/jibx/runtime/IBindingFactory;->getNamespaces()[Ljava/lang/String;

    move-result-object v14

    .line 157
    .local v14, nss:[Ljava/lang/String;
    invoke-interface {v9}, Lorg/jibx/runtime/IBindingFactory;->getPrefixes()[Ljava/lang/String;

    move-result-object v17

    .line 158
    .local v17, prefs:[Ljava/lang/String;
    if-eqz v17, :cond_11

    .line 159
    array-length v0, v14

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_11

    .line 160
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v22, "Defines "

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 161
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    array-length v0, v14

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x2

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->print(I)V

    .line 162
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v22, " namespace(s):"

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 163
    const/4 v10, 0x1

    .local v10, i:I
    :goto_5
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v10, v0, :cond_11

    .line 164
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 165
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget-object v22, v14, v10

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 166
    aget-object v21, v17, v10

    if-nez v21, :cond_10

    .line 167
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v22, " (default namespace)"

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 163
    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 130
    .end local v9           #factory:Lorg/jibx/runtime/IBindingFactory;
    .end local v10           #i:I
    .end local v12           #major:I
    .end local v13           #minor:I
    .end local v14           #nss:[Ljava/lang/String;
    .end local v17           #prefs:[Ljava/lang/String;
    :cond_e
    invoke-virtual {v11, v6}, Ljava/net/URLClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 131
    .local v4, clas:Ljava/lang/Class;
    if-nez v3, :cond_f

    .line 132
    invoke-static {v4}, Lorg/jibx/runtime/BindingDirectory;->getFactory(Ljava/lang/Class;)Lorg/jibx/runtime/IBindingFactory;

    move-result-object v9

    .restart local v9       #factory:Lorg/jibx/runtime/IBindingFactory;
    goto/16 :goto_4

    .line 134
    .end local v9           #factory:Lorg/jibx/runtime/IBindingFactory;
    :cond_f
    invoke-static {v3, v4, v11}, Lorg/jibx/runtime/BindingDirectory;->getFactory(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/ClassLoader;)Lorg/jibx/runtime/IBindingFactory;

    move-result-object v9

    .restart local v9       #factory:Lorg/jibx/runtime/IBindingFactory;
    goto/16 :goto_4

    .line 169
    .end local v4           #clas:Ljava/lang/Class;
    .restart local v10       #i:I
    .restart local v12       #major:I
    .restart local v13       #minor:I
    .restart local v14       #nss:[Ljava/lang/String;
    .restart local v17       #prefs:[Ljava/lang/String;
    :cond_10
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v22, " (prefix "

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 170
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget-object v22, v17, v10

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 171
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v22, 0x29

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(C)V
    :try_end_0
    .catch Lorg/jibx/runtime/JiBXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_6

    .line 187
    .end local v9           #factory:Lorg/jibx/runtime/IBindingFactory;
    .end local v10           #i:I
    .end local v11           #loader:Ljava/net/URLClassLoader;
    .end local v12           #major:I
    .end local v13           #minor:I
    .end local v14           #nss:[Ljava/lang/String;
    .end local v17           #prefs:[Ljava/lang/String;
    .end local v18           #urls:[Ljava/net/URL;
    :catch_0
    move-exception v8

    .line 188
    .local v8, ex:Lorg/jibx/runtime/JiBXException;
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Lorg/jibx/runtime/JiBXException;->printStackTrace(Ljava/io/PrintStream;)V

    goto/16 :goto_3

    .line 176
    .end local v8           #ex:Lorg/jibx/runtime/JiBXException;
    .restart local v9       #factory:Lorg/jibx/runtime/IBindingFactory;
    .restart local v11       #loader:Ljava/net/URLClassLoader;
    .restart local v12       #major:I
    .restart local v13       #minor:I
    .restart local v14       #nss:[Ljava/lang/String;
    .restart local v17       #prefs:[Ljava/lang/String;
    .restart local v18       #urls:[Ljava/net/URL;
    :cond_11
    :try_start_1
    move/from16 v0, v20

    invoke-static {v9, v0}, Lorg/jibx/runtime/PrintInfo;->listBaseBindings(Lorg/jibx/runtime/IBindingFactory;Z)V

    .line 177
    move/from16 v0, v20

    invoke-static {v9, v0}, Lorg/jibx/runtime/PrintInfo;->listClasses(Lorg/jibx/runtime/IBindingFactory;Z)V

    .line 178
    move/from16 v0, v20

    invoke-static {v9, v0}, Lorg/jibx/runtime/PrintInfo;->listAbstracts(Lorg/jibx/runtime/IBindingFactory;Z)V

    .line 179
    if-eqz v20, :cond_7

    .line 180
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v22, "Classes containing binding code:"

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 181
    invoke-interface {v9}, Lorg/jibx/runtime/IBindingFactory;->getBindingClasses()[Ljava/lang/String;

    move-result-object v5

    .line 182
    .local v5, classes:[Ljava/lang/String;
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_7
    array-length v0, v5

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v10, v0, :cond_7

    .line 183
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 184
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget-object v22, v5, v10

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/jibx/runtime/JiBXException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2

    .line 182
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 189
    .end local v5           #classes:[Ljava/lang/String;
    .end local v9           #factory:Lorg/jibx/runtime/IBindingFactory;
    .end local v10           #i:I
    .end local v11           #loader:Ljava/net/URLClassLoader;
    .end local v12           #major:I
    .end local v13           #minor:I
    .end local v14           #nss:[Ljava/lang/String;
    .end local v17           #prefs:[Ljava/lang/String;
    .end local v18           #urls:[Ljava/net/URL;
    :catch_1
    move-exception v7

    .line 190
    .local v7, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v7}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto/16 :goto_3

    .line 191
    .end local v7           #e:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v7

    .line 192
    .local v7, e:Ljava/net/MalformedURLException;
    invoke-virtual {v7}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto/16 :goto_3

    .line 197
    .end local v3           #bname:Ljava/lang/String;
    .end local v6           #cname:Ljava/lang/String;
    .end local v7           #e:Ljava/net/MalformedURLException;
    .end local v15           #offset:I
    .end local v16           #pname:Ljava/lang/String;
    .end local v20           #verbose:Z
    :cond_12
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v22, "Use \'-?\' argument for usage details"

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_3
.end method
