public with sharing class SimpleMap1 
{
    public Map<Integer, String> addLabelsToMap(List<String> labels)
    {
        // change this method to create a map and add the supplied 'labels'
        // to it, keyed by their position in the labels list with origin
        // one. i.e. the first label in the list has the index '1', the
        // second has the index '2'.

        return null;
    }

    public void addIfNotPresent(Map<Integer, String> inMap, Integer key, String value)
    {
        // change this method to add 'value' indexed by 'key' to the 
        // supplied 'inMap' ONLY if an entry with the key of 'key' is
        // not present in the map already.
    }    
    
    public Boolean containsKeys(Map<Integer, String> inMap, List<Integer> keys)
    {
        // change this method to return true if the supplied 'inMap' contains
        // entries for all elements in the supplied list 'keys'

        return null;
    }    
    
    public Map<Integer, String> combineMaps(Map<Integer, String> map1, Map<Integer, String> map2)
    {
        // change this method to return a new map containin all key/value pairs 
        // from the suppled 'map1' and 'map2'

        return null;
    }

    public Integer getSize(Map<String, String> inMap)
    {
        // change this method to return the number of key/value pairs in the supplied
        // map 'inMap'

        return null;
    }

    public Integer getMaxValue(Map<String, Integer> inMap)
    {
        // change this method to return the largest value stored
        // in the supplied 'inMap'

        return null;
    }

    public Integer getKeyTotal(Map<Integer, String> inMap)
    {
        // change this method to return the sum total of the key values
        // from the supplied map 'inMap'

        return null;
    }

    public void removeIfValueMatches(Map<Integer, String> inMap, Integer key, String value)
    {
        // change this method to remove the entry keyed by the supplied 'key' from the supplied
        // 'inMap' ONLY if it is currently mapped to the supplied value. 
    }
}
