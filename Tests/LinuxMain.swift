import XCTest

import DivTests
import ATagTests
import BlockquoteTests
import BrTests
import ButtonTests
import CanvasTests
import CenterTests
import CodeTests
import EmTests
import UTagTests
import StrongTests
import HrTests
import FieldsetTests
import FormTests
import HTagsTests
import ImgTests
import LabelTests
import MainTests
import PreTests
import PTests
import CompositeElementsTests
import FactoryElementsTests
import TextAreaTests
import BodyTests
import HeadTests
import HtmlTests
import LinkTests
import MetaTests
import ScriptTests
import TitleTests
import HeaderTests
import FooterTests

var tests = [XCTestCaseEntry]()
tests += DivTests.allTests()
tests += ATagTests.allTests()
tests += BlockquoteTests.allTests()
tests += BrTests.allTests()
tests += ButtonTests.allTests()
tests += CanvasTests.allTests()
tests += CenterTests.allTests()
tests += CodeTests.allTests()
tests += EmTests.allTests()
tests += UTagTests.allTests()
tests += StrongTests.allTests()
tests += HrTests.allTests()
tests += FieldsetTests.allTests()
tests += FormTests.allTests()
tests += HTagsTests.allTests()
tests += ImgTests.allTests()
tests += LabelTests.allTests()
tests += MainTests.allTests()
tests += PreTests.allTests()
tests += PTests.allTests()
tests += SectionTest.allTests()
tests += TextTest.allTests()
tests += CompositeElementsTests.allTests()
tests += FactoryElementsTests.allTests()
tests += TextareaTests.allTests()
tests += BodyTests.allTests()
tests += HeadTests.allTests()
tests += HtmlTests.allTests()
tests += LinkTests.allTests()
tests += MetaTests.allTests()
tests += ScriptTests.allTests()
tests += TitleTests.allTests()
tests += HeaderTests.allTests()
tests += FooterTests.allTests()

XCTMain(tests)
