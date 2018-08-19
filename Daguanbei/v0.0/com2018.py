print("开始............")


import pandas as pd
from sklearn.linear_model import LogisticRegression
from sklearn.feature_extraction.text import CountVectorizer

#代码预处理，删除训练集的article和id列，删除测试集的article列
df_train = pd.read_csv('./train_set.csv')
df_test = pd.read_csv('./test_set.csv')
df_train.drop(columns = ['article','id'], inplace = True)
df_test.drop(columns = ['article'], inplace = True)

#将数据集中的字符文本转换成数字向量，以便计算机能够进行处理（一段文字->一个向量）
#知识点：特征工程
vectorizer = CountVectorizer(ngram_range = (1, 2), min_df = 3, max_df = 0.9, max_features= 100000)#初始化一个CountVectorizer对象
vectorizer.fit(df_train['word_seg'])#构建词汇表
x_train = vectorizer.transform(df_train['word_seg'])#将每一篇文章转为与其对应的一个特征向量
x_test = vectorizer.transform(df_test['word_seg'])#将每一篇文章转为与其对应的一个特征向量
y_train = df_train['class'] - 1 #因为从0开始计数，所以要将原值-1

#训练一个分类器，传统的监督学习的对数几率回归
lg = LogisticRegression(C = 4, dual = True)#初始化一个分类器
lg.fit(x_train, y_train)#训练这个分类器

#根据上面的分类器对测试集的每个样本进行预测
y_test = lg.predict(x_test)

#将结果保存到本地
df_test['class'] = y_test.tolist()#转化为Python的List形式
df_test['class'] = df_test['class'] + 1#将class+1，保证和官方的预测值一致
df_result = df_test.loc[:, ['id', 'class']]
df_result.to_csv('./result.csv',index = False)

print("完成............")