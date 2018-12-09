package blog.lucene;

import blog.domain.Blog;
import org.apache.lucene.analysis.cn.smart.SmartChineseAnalyzer;
import org.apache.lucene.document.Document;
import org.apache.lucene.document.Field;
import org.apache.lucene.document.TextField;
import org.apache.lucene.document.StringField;
import org.apache.lucene.index.IndexWriter;
import org.apache.lucene.index.IndexWriterConfig;
import org.apache.lucene.store.Directory;
import org.apache.lucene.store.FSDirectory;

import javax.naming.spi.DirectoryManager;
import java.awt.*;
import java.awt.peer.FileDialogPeer;
import java.nio.file.Paths;

import static java.nio.file.Paths.*;

/**
 * create by yuzongjian on 2018/12/9
 * blog:yuzongjian.top
 */
/*
博客索引类
 */
public class BlogIndex {
    private Directory dir;
    /*
     获取IndexWriter实例
     */
    private IndexWriter getWriter()throws Exception{
        dir= FSDirectory.open(get("D://lucene"));
        SmartChineseAnalyzer analyzer =new SmartChineseAnalyzer();
        IndexWriterConfig iwc=new IndexWriterConfig(analyzer);
        IndexWriter writer=new IndexWriter(dir,iwc);
        return writer;
    }
    public void addIndex(Blog blog) throws Exception {
        IndexWriter IndexWriter=getWriter();
        Document doc=new Document();
        doc.add(new StringField("id",String.valueOf(blog.getId()), Field.Store.YES));
        doc.add(new TextField("title",blog.getTitle(), Field.Store.YES));
        doc.add(new StringField("id",String.valueOf(blog.getId()), Field.Store.YES));

    }
}
