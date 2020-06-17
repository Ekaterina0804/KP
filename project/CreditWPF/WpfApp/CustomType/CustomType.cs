using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WpfApp.CustomType
{
    public class CustomSegment
    {
        public string Id { get; set; }
        public int Min { get; set; }
        public int Max { get; set; }
        public string Show { get; set; }
    }

    public class CustomSex
    {
        public string Name { get; set; }
        public string ShortName { get; set; }
    }

    public static class CustomClass
    {
        public static List<CustomSegment> ListCustomRevenue()
        {
            List<CustomSegment> list = new List<CustomSegment>
            {
                new CustomSegment{Id = "1",Min = 15000, Max   = 1000000, Show = " > 15000"},
                new CustomSegment{Id = "2", Min = 0, Max = 15000, Show = " < 15000" }
            };
            return list;
        }

        public static List<CustomSex> ListCustomSex()
        {
            List<CustomSex> list = new List<CustomSex>
            {
                new CustomSex{Name = "не имеет значения",ShortName = ""},
                new CustomSex{Name = "мужской",ShortName = "м"},
                new CustomSex{Name = "женский",ShortName = "ж"}
            };
            return list;
        }

        public static List<CustomSex> ListCustomMarried()
        {
            List<CustomSex> list = new List<CustomSex>
            {
                new CustomSex{Name = "не имеет значения",ShortName = ""},
                new CustomSex{Name = "замуж/женат", ShortName = "ж"},
                new CustomSex{Name = "холост", ShortName = "х"}
            };
            return list;
        }

        public static List<CustomSegment> ListCustomChildren()
        {
            List<CustomSegment> list = new List<CustomSegment>
            {
                new CustomSegment{Id = "1", Min = 0, Max = 0, Show = "не имеет значения"},
                new CustomSegment{Id = "2", Min = 0, Max = 3, Show = " < 3" },
                new CustomSegment{Id = "3", Min = 3, Max = 30, Show = " > 3" }
            };
            return list;
        }

    }
}
