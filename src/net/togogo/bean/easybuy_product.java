package net.togogo.bean;

public class easybuy_product {
    private int id;
    private String name;
    private String description;
    private float price;
    private int stock;
    private int categoryLevel1Id;
    private int categoryLevel2Id;
    private int categorylevel3Id;
    private String fileName;
    private int isDelete;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public int getCategoryLevel1Id() {
        return categoryLevel1Id;
    }

    public void setCategoryLevel1Id(int categoryLevel1Id) {
        this.categoryLevel1Id = categoryLevel1Id;
    }

    public int getCategoryLevel2Id() {
        return categoryLevel2Id;
    }

    public void setCategoryLevel2Id(int categoryLevel2Id) {
        this.categoryLevel2Id = categoryLevel2Id;
    }

    public int getCategorylevel3Id() {
        return categorylevel3Id;
    }

    public void setCategorylevel3Id(int categorylevel3Id) {
        this.categorylevel3Id = categorylevel3Id;
    }

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public int getIsDelete() {
        return isDelete;
    }

    public void setIsDelete(int isDelete) {
        this.isDelete = isDelete;
    }

    public easybuy_product(int id, String name, String description, float price, int stock, int categoryLevel1Id, int categoryLevel2Id, int categorylevel3Id, String fileName, int isDelete) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.price = price;
        this.stock = stock;
        this.categoryLevel1Id = categoryLevel1Id;
        this.categoryLevel2Id = categoryLevel2Id;
        this.categorylevel3Id = categorylevel3Id;
        this.fileName = fileName;
        this.isDelete = isDelete;
    }

    public easybuy_product() {
    }
}
