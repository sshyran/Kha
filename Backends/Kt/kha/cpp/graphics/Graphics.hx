package kha.cpp.graphics;

import kha.graphics.FragmentShader;
import kha.graphics.VertexShader;
import kha.graphics.VertexStructure;
import kha.graphics.TextureWrap;

@:headerCode('
#include <Kt/stdafx.h>
#include <Kt/Graphics/Graphics.h>
')

class Graphics implements kha.graphics.Graphics {
	public function new() {
		
	}
	
	public function createVertexBuffer(vertexCount: Int, structure: VertexStructure): kha.graphics.VertexBuffer {
		return new VertexBuffer(vertexCount, structure);
	}
	
	public function setVertexBuffer(vertexBuffer: kha.graphics.VertexBuffer): Void {
		cast(vertexBuffer, VertexBuffer).set();
	}
	
	public function createIndexBuffer(indexCount: Int): kha.graphics.IndexBuffer {
		return new IndexBuffer(indexCount);
	}
	
	public function setIndexBuffer(indexBuffer: kha.graphics.IndexBuffer): Void {
		cast(indexBuffer, IndexBuffer).set();
	}
	
	public function createTexture(image: kha.Image): kha.graphics.Texture {
		return new Texture(image);
	}
	
	public function setTextureWrap(stage: Int, u: TextureWrap, v: TextureWrap): Void {
		
	}
	
	public function createVertexShader(source: String): VertexShader {
		return new Shader(source, ShaderType.VertexShader);
	}
	
	public function createFragmentShader(source: String): FragmentShader {
		return new Shader(source, ShaderType.FragmentShader);
	}
	
	public function createProgram(): kha.graphics.Program {
		return new Program();
	}
	
	public function setProgram(program: kha.graphics.Program): Void {
		cast(program, Program).set();
	}
	
	public function setInt(location: Int, value: Int): Void {
		
	}

	public function setFloat(location: Int, value: Float): Void {
		
	}
	
	public function setFloat2(location: Int, value1: Float, value2: Float): Void {
		
	}
	
	public function setFloat3(location: Int, value1: Float, value2: Float, value3: Float): Void {
		
	}
	
	public function drawIndexedVertices(start: Int = 0, ?count: Int): Void {
		if (count == null) drawAllIndexedVertices();
		else drawSomeIndexedVertices(start, count);
	}
	
	@:functionCode("
		Kt::Graphics::drawIndexedVertices();
	")
	private function drawAllIndexedVertices(): Void {
		
	}
	
	@:functionCode("
		Kt::Graphics::drawIndexedVertices(start, count);
	")
	public function drawSomeIndexedVertices(start: Int, count: Int): Void {
		
	}
}