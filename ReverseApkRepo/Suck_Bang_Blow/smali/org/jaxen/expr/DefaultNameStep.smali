.class public Lorg/jaxen/expr/DefaultNameStep;
.super Lorg/jaxen/expr/DefaultStep;
.source "DefaultNameStep.java"

# interfaces
.implements Lorg/jaxen/expr/NameStep;


# static fields
.field private static final serialVersionUID:J = 0x5f20917c50161f6L


# instance fields
.field private hasPrefix:Z

.field private localName:Ljava/lang/String;

.field private matchesAnyName:Z

.field private prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/jaxen/expr/iter/IterableAxis;Ljava/lang/String;Ljava/lang/String;Lorg/jaxen/expr/PredicateSet;)V
    .locals 1
    .parameter "axis"
    .parameter "prefix"
    .parameter "localName"
    .parameter "predicateSet"

    .prologue
    .line 102
    invoke-direct {p0, p1, p4}, Lorg/jaxen/expr/DefaultStep;-><init>(Lorg/jaxen/expr/iter/IterableAxis;Lorg/jaxen/expr/PredicateSet;)V

    .line 104
    iput-object p2, p0, Lorg/jaxen/expr/DefaultNameStep;->prefix:Ljava/lang/String;

    .line 105
    iput-object p3, p0, Lorg/jaxen/expr/DefaultNameStep;->localName:Ljava/lang/String;

    .line 106
    const-string v0, "*"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/jaxen/expr/DefaultNameStep;->matchesAnyName:Z

    .line 107
    iget-object v0, p0, Lorg/jaxen/expr/DefaultNameStep;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jaxen/expr/DefaultNameStep;->prefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/jaxen/expr/DefaultNameStep;->hasPrefix:Z

    .line 108
    return-void

    .line 107
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasNamespace(Ljava/lang/String;)Z
    .locals 1
    .parameter "uri"

    .prologue
    .line 388
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public evaluate(Lorg/jaxen/Context;)Ljava/util/List;
    .locals 27
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/JaxenException;
        }
    .end annotation

    .prologue
    .line 158
    invoke-virtual/range {p1 .. p1}, Lorg/jaxen/Context;->getNodeSet()Ljava/util/List;

    move-result-object v16

    .line 159
    .local v16, contextNodeSet:Ljava/util/List;
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v17

    .line 161
    .local v17, contextSize:I
    if-nez v17, :cond_0

    .line 162
    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 308
    :goto_0
    return-object v6

    .line 164
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/jaxen/Context;->getContextSupport()Lorg/jaxen/ContextSupport;

    move-result-object v5

    .line 165
    .local v5, support:Lorg/jaxen/ContextSupport;
    invoke-virtual/range {p0 .. p0}, Lorg/jaxen/expr/DefaultNameStep;->getIterableAxis()Lorg/jaxen/expr/iter/IterableAxis;

    move-result-object v3

    .line 166
    .local v3, iterableAxis:Lorg/jaxen/expr/iter/IterableAxis;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/jaxen/expr/DefaultNameStep;->matchesAnyName:Z

    move v6, v0

    if-nez v6, :cond_1

    invoke-virtual {v3, v5}, Lorg/jaxen/expr/iter/IterableAxis;->supportsNamedAccess(Lorg/jaxen/ContextSupport;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    move/from16 v22, v6

    .line 169
    .local v22, namedAccess:Z
    :goto_1
    const/4 v6, 0x1

    move/from16 v0, v17

    move v1, v6

    if-ne v0, v1, :cond_b

    .line 170
    const/4 v6, 0x0

    move-object/from16 v0, v16

    move v1, v6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 171
    .local v4, contextNode:Ljava/lang/Object;
    if-eqz v22, :cond_6

    .line 173
    const/4 v8, 0x0

    .line 174
    .local v8, uri:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/jaxen/expr/DefaultNameStep;->hasPrefix:Z

    move v6, v0

    if-eqz v6, :cond_2

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jaxen/expr/DefaultNameStep;->prefix:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lorg/jaxen/ContextSupport;->translateNamespacePrefixToUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 176
    if-nez v8, :cond_2

    .line 177
    new-instance v6, Lorg/jaxen/UnresolvableException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "XPath expression uses unbound namespace prefix "

    .end local v8           #uri:Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jaxen/expr/DefaultNameStep;->prefix:Ljava/lang/String;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/jaxen/UnresolvableException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 166
    .end local v4           #contextNode:Ljava/lang/Object;
    .end local v22           #namedAccess:Z
    :cond_1
    const/4 v6, 0x0

    move/from16 v22, v6

    goto :goto_1

    .line 180
    .restart local v4       #contextNode:Ljava/lang/Object;
    .restart local v8       #uri:Ljava/lang/String;
    .restart local v22       #namedAccess:Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jaxen/expr/DefaultNameStep;->localName:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jaxen/expr/DefaultNameStep;->prefix:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual/range {v3 .. v8}, Lorg/jaxen/expr/iter/IterableAxis;->namedAccessIterator(Ljava/lang/Object;Lorg/jaxen/ContextSupport;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v15

    .line 182
    .local v15, axisNodeIter:Ljava/util/Iterator;
    if-eqz v15, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_4

    .line 183
    :cond_3
    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    .line 188
    :cond_4
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .local v23, newNodeSet:Ljava/util/List;
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 190
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v0, v23

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 194
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/jaxen/expr/DefaultNameStep;->getPredicateSet()Lorg/jaxen/expr/PredicateSet;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v23

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lorg/jaxen/expr/PredicateSet;->evaluatePredicates(Ljava/util/List;Lorg/jaxen/ContextSupport;)Ljava/util/List;

    move-result-object v6

    goto/16 :goto_0

    .line 199
    .end local v8           #uri:Ljava/lang/String;
    .end local v15           #axisNodeIter:Ljava/util/Iterator;
    .end local v23           #newNodeSet:Ljava/util/List;
    :cond_6
    invoke-virtual {v3, v4, v5}, Lorg/jaxen/expr/iter/IterableAxis;->iterator(Ljava/lang/Object;Lorg/jaxen/ContextSupport;)Ljava/util/Iterator;

    move-result-object v15

    .line 200
    .restart local v15       #axisNodeIter:Ljava/util/Iterator;
    if-eqz v15, :cond_7

    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_8

    .line 201
    :cond_7
    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto/16 :goto_0

    .line 206
    :cond_8
    new-instance v23, Ljava/util/ArrayList;

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 207
    .restart local v23       #newNodeSet:Ljava/util/List;
    :cond_9
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 208
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    .line 209
    .local v18, eachAxisNode:Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lorg/jaxen/expr/DefaultNameStep;->matches(Ljava/lang/Object;Lorg/jaxen/ContextSupport;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 210
    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 215
    .end local v18           #eachAxisNode:Ljava/lang/Object;
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lorg/jaxen/expr/DefaultNameStep;->getPredicateSet()Lorg/jaxen/expr/PredicateSet;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v23

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lorg/jaxen/expr/PredicateSet;->evaluatePredicates(Ljava/util/List;Lorg/jaxen/ContextSupport;)Ljava/util/List;

    move-result-object v6

    goto/16 :goto_0

    .line 220
    .end local v4           #contextNode:Ljava/lang/Object;
    .end local v15           #axisNodeIter:Ljava/util/Iterator;
    .end local v23           #newNodeSet:Ljava/util/List;
    :cond_b
    new-instance v26, Lorg/jaxen/expr/IdentitySet;

    invoke-direct/range {v26 .. v26}, Lorg/jaxen/expr/IdentitySet;-><init>()V

    .line 221
    .local v26, unique:Lorg/jaxen/expr/IdentitySet;
    new-instance v21, Ljava/util/ArrayList;

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 222
    .local v21, interimSet:Ljava/util/List;
    new-instance v23, Ljava/util/ArrayList;

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 224
    .restart local v23       #newNodeSet:Ljava/util/List;
    if-eqz v22, :cond_12

    .line 225
    const/4 v8, 0x0

    .line 226
    .restart local v8       #uri:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/jaxen/expr/DefaultNameStep;->hasPrefix:Z

    move v6, v0

    if-eqz v6, :cond_c

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jaxen/expr/DefaultNameStep;->prefix:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lorg/jaxen/ContextSupport;->translateNamespacePrefixToUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 228
    if-nez v8, :cond_c

    .line 229
    new-instance v6, Lorg/jaxen/UnresolvableException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "XPath expression uses unbound namespace prefix "

    .end local v8           #uri:Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jaxen/expr/DefaultNameStep;->prefix:Ljava/lang/String;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/jaxen/UnresolvableException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 232
    .restart local v8       #uri:Ljava/lang/String;
    :cond_c
    const/16 v20, 0x0

    .local v20, i:I
    :goto_4
    move/from16 v0, v20

    move/from16 v1, v17

    if-ge v0, v1, :cond_18

    .line 233
    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 235
    .local v10, eachContextNode:Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jaxen/expr/DefaultNameStep;->localName:Ljava/lang/String;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jaxen/expr/DefaultNameStep;->prefix:Ljava/lang/String;

    move-object v13, v0

    move-object v9, v3

    move-object v11, v5

    move-object v14, v8

    invoke-virtual/range {v9 .. v14}, Lorg/jaxen/expr/iter/IterableAxis;->namedAccessIterator(Ljava/lang/Object;Lorg/jaxen/ContextSupport;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v15

    .line 237
    .restart local v15       #axisNodeIter:Ljava/util/Iterator;
    if-eqz v15, :cond_d

    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_e

    .line 232
    :cond_d
    :goto_5
    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    .line 241
    :cond_e
    :goto_6
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 243
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    .line 244
    .restart local v18       #eachAxisNode:Ljava/lang/Object;
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 248
    .end local v18           #eachAxisNode:Ljava/lang/Object;
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lorg/jaxen/expr/DefaultNameStep;->getPredicateSet()Lorg/jaxen/expr/PredicateSet;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v21

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lorg/jaxen/expr/PredicateSet;->evaluatePredicates(Ljava/util/List;Lorg/jaxen/ContextSupport;)Ljava/util/List;

    move-result-object v25

    .line 251
    .local v25, predicateNodes:Ljava/util/List;
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .line 252
    .local v24, predicateNodeIter:Ljava/util/Iterator;
    :cond_10
    :goto_7
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 254
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    .line 255
    .local v19, eachPredicateNode:Ljava/lang/Object;
    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/jaxen/expr/IdentitySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    .line 257
    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/jaxen/expr/IdentitySet;->add(Ljava/lang/Object;)V

    .line 258
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 261
    .end local v19           #eachPredicateNode:Ljava/lang/Object;
    :cond_11
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->clear()V

    goto :goto_5

    .line 265
    .end local v8           #uri:Ljava/lang/String;
    .end local v10           #eachContextNode:Ljava/lang/Object;
    .end local v15           #axisNodeIter:Ljava/util/Iterator;
    .end local v20           #i:I
    .end local v24           #predicateNodeIter:Ljava/util/Iterator;
    .end local v25           #predicateNodes:Ljava/util/List;
    :cond_12
    const/16 v20, 0x0

    .restart local v20       #i:I
    :goto_8
    move/from16 v0, v20

    move/from16 v1, v17

    if-ge v0, v1, :cond_18

    .line 266
    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 268
    .restart local v10       #eachContextNode:Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lorg/jaxen/expr/DefaultNameStep;->axisIterator(Ljava/lang/Object;Lorg/jaxen/ContextSupport;)Ljava/util/Iterator;

    move-result-object v15

    .line 269
    .restart local v15       #axisNodeIter:Ljava/util/Iterator;
    if-eqz v15, :cond_13

    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_14

    .line 265
    :cond_13
    :goto_9
    add-int/lit8 v20, v20, 0x1

    goto :goto_8

    .line 282
    :cond_14
    :goto_a
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_15

    .line 283
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    .line 285
    .restart local v18       #eachAxisNode:Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lorg/jaxen/expr/DefaultNameStep;->matches(Ljava/lang/Object;Lorg/jaxen/ContextSupport;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 286
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 291
    .end local v18           #eachAxisNode:Ljava/lang/Object;
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lorg/jaxen/expr/DefaultNameStep;->getPredicateSet()Lorg/jaxen/expr/PredicateSet;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v21

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lorg/jaxen/expr/PredicateSet;->evaluatePredicates(Ljava/util/List;Lorg/jaxen/ContextSupport;)Ljava/util/List;

    move-result-object v25

    .line 294
    .restart local v25       #predicateNodes:Ljava/util/List;
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .line 295
    .restart local v24       #predicateNodeIter:Ljava/util/Iterator;
    :cond_16
    :goto_b
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_17

    .line 297
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    .line 298
    .restart local v19       #eachPredicateNode:Ljava/lang/Object;
    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/jaxen/expr/IdentitySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_16

    .line 300
    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/jaxen/expr/IdentitySet;->add(Ljava/lang/Object;)V

    .line 301
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 304
    .end local v19           #eachPredicateNode:Ljava/lang/Object;
    :cond_17
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->clear()V

    goto :goto_9

    .end local v10           #eachContextNode:Ljava/lang/Object;
    .end local v15           #axisNodeIter:Ljava/util/Iterator;
    .end local v24           #predicateNodeIter:Ljava/util/Iterator;
    .end local v25           #predicateNodes:Ljava/util/List;
    :cond_18
    move-object/from16 v6, v23

    .line 308
    goto/16 :goto_0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lorg/jaxen/expr/DefaultNameStep;->localName:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/jaxen/expr/DefaultNameStep;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 143
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 144
    .local v0, buf:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultNameStep;->getAxisName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultNameStep;->getPrefix()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultNameStep;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 146
    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultNameStep;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 148
    :cond_0
    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultNameStep;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-super {p0}, Lorg/jaxen/expr/DefaultStep;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isMatchesAnyName()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lorg/jaxen/expr/DefaultNameStep;->matchesAnyName:Z

    return v0
.end method

.method public matches(Ljava/lang/Object;Lorg/jaxen/ContextSupport;)Z
    .locals 7
    .parameter "node"
    .parameter "contextSupport"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/JaxenException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 321
    invoke-virtual {p2}, Lorg/jaxen/ContextSupport;->getNavigator()Lorg/jaxen/Navigator;

    move-result-object v1

    .line 322
    .local v1, nav:Lorg/jaxen/Navigator;
    const/4 v0, 0x0

    .line 323
    .local v0, myUri:Ljava/lang/String;
    const/4 v2, 0x0

    .line 324
    .local v2, nodeName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 326
    .local v3, nodeUri:Ljava/lang/String;
    invoke-interface {v1, p1}, Lorg/jaxen/Navigator;->isElement(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 327
    invoke-interface {v1, p1}, Lorg/jaxen/Navigator;->getElementName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 328
    invoke-interface {v1, p1}, Lorg/jaxen/Navigator;->getElementNamespaceUri(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 355
    :goto_0
    iget-boolean v4, p0, Lorg/jaxen/expr/DefaultNameStep;->hasPrefix:Z

    if-eqz v4, :cond_7

    .line 356
    iget-object v4, p0, Lorg/jaxen/expr/DefaultNameStep;->prefix:Ljava/lang/String;

    invoke-virtual {p2, v4}, Lorg/jaxen/ContextSupport;->translateNamespacePrefixToUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 357
    if-nez v0, :cond_8

    .line 358
    new-instance v4, Lorg/jaxen/UnresolvableException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot resolve namespace prefix \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/jaxen/expr/DefaultNameStep;->prefix:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jaxen/UnresolvableException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 330
    :cond_0
    invoke-interface {v1, p1}, Lorg/jaxen/Navigator;->isText(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v6

    .line 378
    :goto_1
    return v4

    .line 333
    :cond_1
    invoke-interface {v1, p1}, Lorg/jaxen/Navigator;->isAttribute(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 334
    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultNameStep;->getAxis()I

    move-result v4

    const/16 v5, 0x9

    if-eq v4, v5, :cond_2

    move v4, v6

    .line 335
    goto :goto_1

    .line 337
    :cond_2
    invoke-interface {v1, p1}, Lorg/jaxen/Navigator;->getAttributeName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 338
    invoke-interface {v1, p1}, Lorg/jaxen/Navigator;->getAttributeNamespaceUri(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 341
    :cond_3
    invoke-interface {v1, p1}, Lorg/jaxen/Navigator;->isDocument(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v6

    .line 342
    goto :goto_1

    .line 344
    :cond_4
    invoke-interface {v1, p1}, Lorg/jaxen/Navigator;->isNamespace(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 345
    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultNameStep;->getAxis()I

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_5

    move v4, v6

    .line 347
    goto :goto_1

    .line 349
    :cond_5
    invoke-interface {v1, p1}, Lorg/jaxen/Navigator;->getNamespacePrefix(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_6
    move v4, v6

    .line 352
    goto :goto_1

    .line 361
    :cond_7
    iget-boolean v4, p0, Lorg/jaxen/expr/DefaultNameStep;->matchesAnyName:Z

    if-eqz v4, :cond_8

    .line 362
    const/4 v4, 0x1

    goto :goto_1

    .line 367
    :cond_8
    invoke-direct {p0, v0}, Lorg/jaxen/expr/DefaultNameStep;->hasNamespace(Ljava/lang/String;)Z

    move-result v4

    invoke-direct {p0, v3}, Lorg/jaxen/expr/DefaultNameStep;->hasNamespace(Ljava/lang/String;)Z

    move-result v5

    if-eq v4, v5, :cond_9

    move v4, v6

    .line 368
    goto :goto_1

    .line 374
    :cond_9
    iget-boolean v4, p0, Lorg/jaxen/expr/DefaultNameStep;->matchesAnyName:Z

    if-nez v4, :cond_a

    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultNameStep;->getLocalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 375
    :cond_a
    invoke-virtual {p0, v0, v3}, Lorg/jaxen/expr/DefaultNameStep;->matchesNamespaceURIs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    goto :goto_1

    :cond_b
    move v4, v6

    .line 378
    goto :goto_1
.end method

.method protected matchesNamespaceURIs(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "uri1"
    .parameter "uri2"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 399
    if-ne p1, p2, :cond_0

    move v0, v1

    .line 408
    :goto_0
    return v0

    .line 402
    :cond_0
    if-nez p1, :cond_2

    .line 403
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    .line 405
    :cond_2
    if-nez p2, :cond_4

    .line 406
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    .line 408
    :cond_4
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 417
    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultNameStep;->getPrefix()Ljava/lang/String;

    move-result-object v0

    .line 418
    .local v0, prefix:Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultNameStep;->getLocalName()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 419
    .local v1, qName:Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[(DefaultNameStep): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 418
    .end local v1           #qName:Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultNameStep;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultNameStep;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    goto :goto_0
.end method
