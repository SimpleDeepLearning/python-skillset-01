class SnowflakeManager():
    def __init__(self):
        print("Checking-in to Snowflake...")
    def __del__(self):
        print("Closing Connection...")
    def connect_to_snowflake(self, profile:str="default")-> None:
        print("Connecting to Snowflake...")