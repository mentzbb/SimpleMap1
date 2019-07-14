@isTest
private class SimpleMap1_Test 
{
    @isTest
    static void addLabelsToMapTest()
    {
        SimpleMap1 sm=new SimpleMap1();

        List<String> labels=new List<String>{'Yellow', 'Green', 'Red', 'Blue'};
        Map<Integer, String> labelMap=sm.addLabelsToMap(labels);

        System.assertEquals('Yellow', labelMap.get(1), 'Element with index 1 should be \'Yellow\'');
        System.assertEquals('Green', labelMap.get(2), 'Element with index 2 should be \'Green\'');
        System.assertEquals('Red', labelMap.get(3), 'Element with index 3 should be \'Red\'');
        System.assertEquals('Blue', labelMap.get(4), 'Element with index 4 should be \'Blue\'');
        System.assertEquals(4, labelMap.size(), 'Size of map should match size of labels - 4');
    }

    @isTest
    static void addIfNotPresentTest()
    {
        SimpleMap1 sm=new SimpleMap1();
        Map<Integer, String> testMap=new Map<Integer, String>{
            1=>'First',
            2=>'Second',
            3=>'Third'
        };

        sm.addIfNotPresent(testMap, 1, 'Last');
        System.assertEquals('First', testMap.get(1), 'Label should not be added to map as key 1 already present');
        sm.addIfNotPresent(testMap, 4, 'Last');
        System.assertEquals('Last', testMap.get(4), 'Label should be added to map as key 4 not already present');
    }
    
    @isTest
    static void containsKeysTest()
    {
        SimpleMap1 sm=new SimpleMap1();

        Map<Integer, String> testMap=new Map<Integer, String>{
            10=>'Ten',
            15=>'Fifteen',
            20=>'Twenty',
            25=>'Twenty Five',
            30=>'Thirty'
        };

        System.assertEquals(false, sm.containsKeys(testMap, new List<Integer>{30, 15, 556}), 
                                                'Should not return true as key 556 is not in map');
        System.assertEquals(true, sm.containsKeys(testMap, new List<Integer>{10}), 
                                                'Should return true as key 10 is in map');
        System.assertEquals(true, sm.containsKeys(testMap, new List<Integer>{30, 25, 20, 15, 10}), 
                                                'Should return true as all keys in map');
        System.assertEquals(false, sm.containsKeys(testMap, new List<Integer>{30, 20, 35, 15, 25, 10}), 
                                                'Should return false as key 35 not in map');
    }
        
    @isTest
    static void combineMapsTest()
    {
        SimpleMap1 sm=new SimpleMap1();

        Map<Integer, String> testMap=new Map<Integer, String>{
            10=>'Ten',
            5=>'Five',
            3=>'Three',
            1=>'One'
        };

        Map<Integer, String> testMap2=new Map<Integer, String>{
            9=>'Nine',
            2=>'Two',
            7=>'Seven',
            4=>'Four',
            8=>'Eight',
            6=>'Six'
        };

        Map<Integer, String> combiMap=sm.combineMaps(testMap, testMap2);

        System.assertEquals('One', combiMap.get(1), 'Element with index 1 should be \'One\'');
        System.assertEquals('Two', combiMap.get(2), 'Element with index 2 should be \'Two\'');
        System.assertEquals('Three', combiMap.get(3), 'Element with index 3 should be \'Three\'');
        System.assertEquals('Four', combiMap.get(4), 'Element with index 4 should be \'Four\'');
        System.assertEquals('Five', combiMap.get(5), 'Element with index 5 should be \'Five\'');
        System.assertEquals('Six', combiMap.get(6), 'Element with index 6 should be \'Six\'');
        System.assertEquals('Seven', combiMap.get(7), 'Element with index 7 should be \'Seven\'');
        System.assertEquals('Eight', combiMap.get(8), 'Element with index 8 should be \'Eight\'');
        System.assertEquals('Nine', combiMap.get(9), 'Element with index 9 should be \'Nine\'');
        System.assertEquals('Ten', combiMap.get(10), 'Element with index 10 should be \'Ten\'');
        System.assertEquals(10, combiMap.size(), 'Size of combined maps should be 10');
    }

    @isTest 
    static void getSizeTest()
    {
        SimpleMap1 sm=new SimpleMap1();

        Map<String, String> testMap=new Map<String, String>{
            'One'=>'Uno',
            'Tres'=>'Three',
            'Nueve'=>'Nine',
            'Dos'=>'Two'
        };

        System.assertEquals(4, sm.getSize(testMap), 'Map size should be 4');
    }

    @isTest 
    static void getMaxValueTest()
    {
        SimpleMap1 sm=new SimpleMap1();

        Map<String, Integer> testMap=new Map<String, Integer>{
            'First'=>20,
            'Second'=>2,
            'Third'=>17,
            'Fourth'=>100,
            'Fifth'=>1,
            'Last'=>40
        };

        System.assertEquals(100, sm.getMaxValue(testMap), 'Max value should be 100');

        testMap.put('Third', 200);
        System.assertEquals(200, sm.getMaxValue(testMap), 'Max value should be 200');
    }

    @isTest 
    static void getMaxValueSomeNegativeTest()
    {
        SimpleMap1 sm=new SimpleMap1();

        Map<String, Integer> testMap=new Map<String, Integer>{
            'First'=>-20,
            'Second'=>2,
            'Third'=>-17,
            'Fourth'=>12,
            'Fifth'=>19,
            'Last'=>-40
        };

        System.assertEquals(19, sm.getMaxValue(testMap), 'Max value should be 19');
    }

    @isTest 
    static void getMaxValueAllNegativeTest()
    {
        SimpleMap1 sm=new SimpleMap1();

        Map<String, Integer> testMap=new Map<String, Integer>{
            'First'=>-20,
            'Second'=>-2,
            'Third'=>-17,
            'Fourth'=>-12,
            'Fifth'=>-19,
            'Last'=>-40
        };

        System.assertEquals(-2, sm.getMaxValue(testMap), 'Max value should be -2');
    }

    @isTest 
    static void getKeyTotalTest()
    {
        SimpleMap1 sm=new SimpleMap1();

        Map<Integer, String> testMap=new Map<Integer, String>{
            10=>'Ten',
            5=>'Five',
            3=>'Three',
            1=>'One',
            64=>'Sixty four'
        };

        System.assertEquals(83, sm.getKeyTotal(testMap), 'Total of keys should be 83');
    }

    @isTest 
    static void removeIfValueMatchesTest()
    {
        SimpleMap1 sm=new SimpleMap1();

        Map<Integer, String> testMap=new Map<Integer, String>{
            10=>'Ten',
            5=>'Five',
            3=>'Three',
            1=>'One',
            64=>'Sixty four'
        };

        sm.removeIfValueMatches(testMap, 5, 'Seven');
        System.assertEquals('Five', testMap.get(5), 'Value for key 5 should be unchanged');

        sm.removeIfValueMatches(testMap, 64, 'sixty four');
        System.assertEquals('Sixty four', testMap.get(64), 'Value for key 64 should be unchanged as case doesn\'t match');

        sm.removeIfValueMatches(testMap, 64, 'Sixty four');
        System.assertEquals(null, testMap.get(64), 'Value for key 64 should be removed');
    }
}
